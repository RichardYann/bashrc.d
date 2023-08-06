git_branch()
{
        branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
if [ "${branch}" != "" ]
then
if [ "${branch}" = "(no branch)" ]
then
branch="(`git rev-parse --short HEAD`...)"
fi
echo "(*$branch)"
fi
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@U20-Docker\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;33m\]$(git_branch)\[\033[00m\]\$ '

