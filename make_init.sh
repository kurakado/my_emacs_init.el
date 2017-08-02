#!/bin/bash

make_init(){
ls common/init.el > /dev/null
if [ $? -ne 0 ] 
then
    echo "error: common/init.el is not exist."
    return 1
fi
cat common/init.el > ~/.emacs.d/init.el
find . -name init.el | xargs cat >> ~/.emacs.d/init.el
return 0
}

now_dir=`pwd`
cd $(dirname $0)
make_init
ret=$?
cd $now_dir
if [ $ret -ne 0 ]
then
 exit $ret
fi
echo "fin."
