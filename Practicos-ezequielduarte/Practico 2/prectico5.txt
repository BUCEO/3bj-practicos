comando=$1


if [ $? -eq 0 ]; then
    man "$comando"
else
    whatis "$comando"
fi
