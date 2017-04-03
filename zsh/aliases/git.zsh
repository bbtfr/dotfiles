alias git.use.https="""
git config --global --unset url.\"git@github.com:\".insteadOf
git config --global url.\"https://\".insteadOf git://
git config --global url.\"https://github.com/\".insteadOf git@github.com:
"""

alias git.use.ssh="""
git config --global url.\"git@github.com:\".insteadOf git://github.com/
git config --global --unset url.\"https://\".insteadof
git config --global --unset url.\"https://github.com/\".insteadof
"""

alias git.use.system="""
git config --global --unset url.\"git@github.com:\".insteadOf
git config --global --unset url.\"https://\".insteadof
git config --global --unset url.\"https://github.com/\".insteadof
"""

function gtp {
  git tag -a $1 -m $1
  git push origin $1
}

function gtp! {
  git tag -a $1 -m $1 -f
  git push origin $1 -f
}
