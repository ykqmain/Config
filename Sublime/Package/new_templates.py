import os
import textwrap

import sublime
import sublime_plugin


def reformat(template):
    return textwrap.dedent(template).lstrip()


class NewBuildSystemCommand(sublime_plugin.WindowCommand):
    def run(self):
        v = self.WindowCommanddow.new_file()
        v.settings().set('default_dir', os.path.join(sublime.packages_path(), 'User'))
        v.assign_syntax('Packages/JavaScript/JSON.sublime-syntax')
        v.set_name('untitled.sublime-build')

        template = reformat(
            """
            {
            \t"shell_cmd": "${0:make}"
            }
            """)
        v.run_command("insert_snippet", {"contents": template})


class NewPluginCommand(sublime_plugin.WindowCommand):
    def run(self):
        v = self.window.new_file()
        v.settings().set('default_dir', os.path.join(sublime.packages_path(), 'User'))
        v.assign_syntax('Packages/Python/Python.sublime-syntax')

        template = reformat(
            """
            import sublime
            import sublime_plugin


            class ExampleCommand(sublime_plugin.TextCommand):
            \tdef run(self, edit):
            \t\t$0self.view.insert(edit, 0, "Hello, World!")
            """)
        v.run_command("insert_snippet", {"contents": template})


class NewSnippetCommand(sublime_plugin.WindowCommand):
    def run(self):
        v = self.window.new_file()
        v.settings().set('default_dir', os.path.join(sublime.packages_path(), 'User'))
        v.settings().set('default_extension', 'sublime-snippet')
        v.assign_syntax('Packages/XML/XML.sublime-syntax')

        template = reformat(
            """
            <snippet>
            \t<content><![CDATA[
            ${1:Hello, this is a snippet.}
            ]]></content>
            \t<!-- Optional: Set a tabTrigger to define how to trigger the snippet -->
            \t<tabTrigger>${2:name}</tabTrigger>
            \t<!-- Optional: Set a description, eg: List Comprehension -->
            \t<description>${3:description}</description>
            \t<!-- Optional: Set a scope to limit where the snippet will trigger -->
            \t<scope>${4:source.python}</scope>
            \t<!-- Save as: X.sublime-snippet -->
            </snippet>
            """)
        v.run_command("insert_snippet", {"contents": template})


class NewSyntaxCommand(sublime_plugin.WindowCommand):
    def run(self):
        v = self.window.new_file()
        v.settings().set('default_dir', os.path.join(sublime.packages_path(), 'User'))
        v.settings().set('default_extension', 'sublime-syntax')
        v.assign_syntax("Packages/YAML/YAML.sublime-syntax")

        template = reformat(
            R"""
            %YAML 1.2
            ---
            # See http://www.sublimetext.com/docs/3/syntax.html
            file_extensions:
              - ec
            scope: source.example-c
            contexts:
              main:
                # Strings begin and end with quotes, and use backslashes as an escape
                # character
                - match: '"'
                  scope: punctuation.definition.string.begin.example-c
                  push: double_quoted_string

                # Comments begin with a '//' and finish at the end of the line
                - match: '//'
                  scope: punctuation.definition.comment.example-c
                  push: line_comment

                # Keywords are if, else for and while.
                # Note that blackslashes don't need to be escaped within single quoted
                # strings in YAML. When using single quoted strings, only single quotes
                # need to be escaped: this is done by using two single quotes next to each
                # other.
                - match: '\b(if|else|for|while)\b'
                  scope: keyword.control.example-c

                # Numbers
                - match: '\b(-)?[0-9.]+\b'
                  scope: constant.numeric.example-c

              double_quoted_string:
                - meta_scope: string.quoted.double.example-c
                - match: '\\.'
                  scope: constant.character.escape.example-c
                - match: '"'
                  scope: punctuation.definition.string.end.example-c
                  pop: true

              line_comment:
                - meta_scope: comment.line.example-c
                - match: $
                  pop: true
            """)

        v.run_command('append', {'characters': template})
