#!/bin/bash -
if [[ $(uname) == "MSWin" ]]
then
	OS=MSWin
elif [[ $(uname) == "Linux" ]]
then
	OS=Linux
else
	OS="not include OS"
fi
echo $OS
