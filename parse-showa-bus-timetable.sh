cat $1                                                            |
sed 's/\t//g'                                                     |
awk '/<div class="nodeName">/{name=$0; getline l; print name, l}' |
sed 's/<.\+>\(.\+\)<\/div> <div>\(.\+\)<\/div>/\1 \2/'            |
sed 's/<.\+>//'                                                   |
sed 's/着//'
