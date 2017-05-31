(setq backupdir "/media/removable/turtle/dotfiles")

# Create list of vimplugins
ls -1 ~/.vim/bundle > ~/vimpluginlist

# Slurp pathlist
echo $PATH > ~/pathlist

(setq dotfiles '("~/.xinitrc"
		 "~/xmonad/xmonad.hs"
		 "~/.sbclrc"
		 "~/.clisprc.lisp"
		 "~/.vimrc"
		 "~/.emacs"
		 "~/.tmux.conf"
		 "~/.config/i3/config"
		 "~/.zshrc"
		 "~/.zshrc_functions"
		 "~/.lein/profiles.clj"
		 "~/vimpluginlist"
		 "~/pathlist"))

(setq dotdirs '("~/emacs"
		"~/.teamocil"))

(setq fishfunctiondir "~/.config/fish/functions") # name too generic, do separately

for file in $dotfiles { cp $file $backupdir}
for dir in $dotdirs { cp -R $dir $backupdir}
cp -R $fishfunctiondir $backupdir/fish
