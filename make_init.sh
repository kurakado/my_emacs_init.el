#!/bin/bash

ls common/init.el
if [ $? -ne 0 ] then
    echo "error: common/init.el is not exist."
fi
cat common/init.el > ~/.emacs/init.el
find . -name init.el | xargs cat >> ~/.emacs/init.el


echo "fin."
