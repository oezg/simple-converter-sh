#!/usr/bin/env bash

definition='^[a-z]+_to_[a-z]+$'
constant='^-?[0-9]+(\.[0-9]+)?$'

echo 'Enter a definition:'
read -a input

if [ ${#input[@]} -eq 2 ] && [[ ${input[0]} =~ $definition ]] && [[ ${input[1]} =~ $constant ]]; then
    echo The definition is correct!
else
    echo The definition is incorrect!
fi