#!/bin/bash

ls common/init.el > /dev/null
if [ $? -ne 0 ] 
then
    echo "error: common/init.el is not exist."
fi
cat common/init.el > ~/.emacs.d/init.el
find . -name init.el | xargs cat >> ~/.emacs.d/init.el


echo "fin."
