#!/usr/bin/env bash

definition='^[a-z]+_to_[a-z]+$'
constant='^-?[0-9]+(\.[0-9]+)?$'

echo 'Enter a definition:'
read arg1 arg2

[[ $arg1 =~ $definition && $arg2 =~ $constant ]] && echo The definition is correct! || echo The definition is incorrect!