set -x
curr_layout=$(sexkbmap -query | grep layout | awk '{print $2}')
[ "$curr_layout" = "us" ] && setxkbmap ru || setxkbmap en
