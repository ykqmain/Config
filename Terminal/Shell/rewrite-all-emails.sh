#!/bin/bash
# 用法: ./rewrite-all-emails.sh "新名字" new@example.com
# 示例: ./rewrite-all-emails.sh "Yang" yang@example.com

CORRECT_NAME=$1
CORRECT_EMAIL=$2

if [ -z "$CORRECT_NAME" ] || [ -z "$CORRECT_EMAIL" ]; then
  echo "❌ 参数不足"
  echo "用法: ./rewrite-all-emails.sh \"新名字\" new@example.com"
  exit 1
fi

echo "🔄 正在拉取远程分支和标签..."
git fetch --all --tags

echo "🔍 收集所有历史邮箱..."
ALL_EMAILS=$(git log --all --format='%ae%n%ce' | sort -u)

echo "发现以下邮箱:"
echo "$ALL_EMAILS"
echo "--------------------------------------"
echo "它们将被替换为: $CORRECT_NAME <$CORRECT_EMAIL>"
echo "(跳过 *@github.com 邮箱)"
echo "--------------------------------------"

# 检查 refs/original 是否存在
if [ -d ".git/refs/original" ]; then
  echo "⚠️ 检测到已有旧的 filter-branch 备份: .git/refs/original/"
  echo "👉 正在清理旧备份..."
  rm -rf .git/refs/original/
  rm -rf .git/logs/
  git gc --prune=now
  git reflog expire --expire=now --all
  echo "✅ 旧备份已清理完毕"
fi

# 改写所有引用（分支、远程分支、标签）
git filter-branch -f --env-filter "
CORRECT_NAME=\"$CORRECT_NAME\"
CORRECT_EMAIL=\"$CORRECT_EMAIL\"

skip_github_email() {
    case \"\$1\" in
        *@github.com) return 0 ;;
        *@users.noreply.github.com) return 0 ;;
        *) return 1 ;;
    esac
}

if ! skip_github_email \"\$GIT_COMMITTER_EMAIL\"; then
    if [ \"\$GIT_COMMITTER_EMAIL\" != \"\$CORRECT_EMAIL\" ]; then
        export GIT_COMMITTER_NAME=\"\$CORRECT_NAME\"
        export GIT_COMMITTER_EMAIL=\"\$CORRECT_EMAIL\"
    fi
fi

if ! skip_github_email \"\$GIT_AUTHOR_EMAIL\"; then
    if [ \"\$GIT_AUTHOR_EMAIL\" != \"\$CORRECT_EMAIL\" ]; then
        export GIT_AUTHOR_NAME=\"\$CORRECT_NAME\"
        export GIT_AUTHOR_EMAIL=\"\$CORRECT_EMAIL\"
    fi
fi
" --tag-name-filter cat -- --all

echo "✅ 历史邮箱替换完成！"
echo "⚠️ 下一步你需要强制推送覆盖远程："
echo "   git push --force --tags origin 'refs/heads/*'"
