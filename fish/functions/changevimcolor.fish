function changecolor
	set tlight "onehalflight"
	set tdark  "onehalfdark"
	set initpath "/home/$USER/.config/nvim/init.vim"
	
	# parse arguments
	if [ $argv = "light" ]
		set theme  $tlight
		set otheme $tdark
		set color  "light"
		set ocolor "dark"
	else if [ $argv = "dark" ]
		set theme  $tdark
		set otheme $tlight
		set color  "dark"
		set ocolor "light"
	else
		echo "usage: changecolor [light|dark]"
		return 1
	end

	# check if color already set
	# set alreadyset (grep -c -e \"colorscheme[[:space:]]$otheme "$initpath")
	set alreadyset (grep -c -e "^colorscheme[[:space:]]$theme" "$initpath")
	if test  $alreadyset -gt 0
		echo "Vim already set to $color theme. No changes made to $initpath."
		return 0
	else 
		echo "Vim set to $color theme."
	end

	# changes the colorscheme commented out
	sed -i "s/\(\"\)\(colorscheme $theme\)/\2/" $initpath	 # uncomment desired 
	sed -i "s/^colorscheme $otheme/\"&/" "$initpath";		 # comment out opposite 
	# changes the background setting
	sed -i "s/\(\"\)\(set background=$color\)/\2/" $initpath # uncomment desired 
	sed -i "s/^set background=$ocolor/\"&/" $initpath;		 # comment out opposite
	# changes the lightline theme
	sed -i "s/\(\"\)\(let g:lightline = { 'colorscheme': '$theme\)/\2/" $initpath 
	sed -i "s/^let g:lightline = { 'colorscheme': '$otheme/\"&/" $initpath;

	# start vim with the init sourced
	vim -S $initpath
end
