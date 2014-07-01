setupes()
{
$curdir=${PWD}
echo $curdir
cd 
ln -s $curdir"/.emacs.d"
cd $curdir
}

installES24()
{
 echo "remove emacs*...."
 sudo apt-get autoremove emacs*
 echo "install emacs 24, add PPA.."
 sudo add-apt-repository ppa:cassou/emacs
 sudo apt-get update
 echo "installing eamcs 24"
 sudo apt-get install emacs-snapshot-el emacs-snapshot-gtk emacs-snapshot
 echo "setup config"
 setupes
 echo "done"
 emacs --version
}
