#!/bin/bash
#  Copyright 2014 jtheripper93 
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
# 

op=$1
apps=""

shift

# Take packages names
while [ "$1" != "" ]; do 
	apps="$apps $1"
	shift
done

#If operation is -S, try install new packages
if [ "$op" = "-S" ]; then
	pacman -S $apps
	
	#If not found...
	if [ "$?" != 0 ]; then
		echo -e "\nDon't you mean: \n"
		set $apps
		while [ "$1" != "" ]; do
			echo -e "For \e[1;36m$1\e[0m:\n"
			pacman -Ss $1 | grep  / | sed 's/(.*.)//'  | grep $1 | sed 's/extra\/\|community\/\|core\/\|multilib\///' 
			shift
			echo 
		done
		#Result of not found
		result=1
	fi
else
	#if operation isn't -S then do it normally
	pacman $op $apps
fi

exit $result
	
