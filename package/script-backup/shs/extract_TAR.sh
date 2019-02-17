#!/bin/bash

nameext=$(basename "$1")
dir=$(dirname "$1") 

cd "$dir" 

tar -t -f "$nameext" > ".""$nameext""_files"
rowcount=$(cat ".""$nameext""_files" | wc -l)

i="1"
hits="0"

while ( [ $i -lt $((rowcount+1)) ] && [ $hits -lt 1 ] );do 

content=$(sed -n "$i{p;q}" ".""$nameext""_files")
cont=${content%*/*}
  if ( [ -d "$cont" ] || [ -f "$cont" ] ); then
  echo "file/folder exists"
  hits=$((hits+1))
  fi

i=$((i+1))
done

rm ".""$nameext""_files"
overw="0"

if [ $hits -gt 0 ]; then
echo "file/folder exists"
overw=$(overwrite_dialog.sh "$ow")
fi
echo $overw

if [ "$overw" == "0" ];then
tar -xf "$nameext" --overwrite
extract_dialog.sh
else
extract_cancel_dialog.sh
fi