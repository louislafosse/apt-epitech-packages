apt --version > /dev/null
[ $? -eq 0 ] && continue || echo "You don't have apt"
for l in $(cat packages.list);do sudo apt install -y -qq $l;done
