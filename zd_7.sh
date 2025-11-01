#!/bin/bash

alias ll='ls -la'

echo "alias ll='ls -la'" >> ~/.bashrc

source ~/.bashrc

echo "Для автодополнения используйте клавишу TAB, например:"
echo "cd /u<TAB>"
