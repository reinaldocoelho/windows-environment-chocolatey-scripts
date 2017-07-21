git config --global core.editor 'subl -w'
git config --global core.autocrlf true
git config --global core.excludesfile ~/.gitignore
git config --global user.email quentin.dreyer@gmail.com
git config --global user.name qkdreyer
git config --global push.default simple
git config --global branch.autosetuprebase always
git config --global fetch.recurseSubmodules true
git config --global merge.tool sublimerge
git config --global mergetool.sublimerge.cmd 'subl -nw "$REMOTE" "$BASE" "$LOCAL" "$MERGED" --command "sublimerge_diff_views"'
git config --global mergetool.sublimerge.trustExitCode false
git config --global diff.tool sublimerge
git config --global difftool.sublimerge.cmd 'subl -n --wait "$REMOTE" "$LOCAL" --command "sublimerge_diff_views {\"left_read_only\": true, \"right_read_only\": true}"'
git config --global alias.sync 'ls | xargs -P10 -I{} git -C {} pull'
git config --global alias.deploy '!f(){ git checkout ${1} && git pull && git merge master && git push origin ${1} && git checkout master && git push origin master; };f'
