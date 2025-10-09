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

# 记录当前分支
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# 生成临时分支列表
echo "🔍 收集远程分支..."
REMOTE_BRANCHES=$(git branch -r | grep -v 'HEAD' | sed 's/origin\///')

TEMP_BRANCHES=()

for branch in $REMOTE_BRANCHES; do
  if ! git show-ref --verify --quiet refs/heads/$branch; then
    git branch $branch origin/$branch
    TEMP_BRANCHES+=("$branch")
    echo "👉 临时创建本地分支: $branch"
  fi
done

echo "📬 收集所有历史邮箱..."
ALL_EMAILS=$(git log --all --format='%ae%n%ce' | sort -u)

echo "发现以下邮箱:"
echo "$ALL_EMAILS"
echo "--------------------------------------"
echo "它们将会被替换为: $CORRECT_NAME <$CORRECT_EMAIL>"
echo "（跳过 *@github.com 与 *@users.noreply.github.com）"
echo "--------------------------------------"

# 清理旧备份
if [ -d ".git/refs/original" ]; then
  echo "⚠️ 检测到旧的 filter-branch 备份，正在清理..."
  rm -rf .git/refs/original/ .git/logs/
  git reflog expire --expire=now --all
  git gc --prune=now
  echo "✅ 旧备份已清理完毕"
fi

# 改写历史
echo "🧩 正在改写所有分支历史..."
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
echo "🚀 正在强制推送所有分支和标签到远程..."
git push --force --tags origin 'refs/heads/*'

# 清理临时分支
echo "🧹 清理临时本地分支..."
for b in "${TEMP_BRANCHES[@]}"; do
  if [ "$b" != "$CURRENT_BRANCH" ]; then
    git branch -D "$b" >/dev/null 2>&1
    echo "🗑️ 删除本地分支: $b"
  fi
done

echo "--------------------------------------"
echo "🎉 所有操作完成！"
echo "✔️ 历史邮箱已全部替换并推送"
echo "✔️ 临时分支已清理，本地仓库已恢复"
echo "--------------------------------------"
