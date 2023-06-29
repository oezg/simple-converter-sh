#!/usr/bin/env bash

echo "Enter a definition:"
read -a user_input

template_definition='^[a-z]+_to_[a-z]+$'
template_constant='^-?[0-9]+(\.[0-9]+)?$'

if [ ${#user_input[@]} -ne 2 ]; then
    echo The definition is incorrect!
elif [[ ${user_input[0]} =~ $template_definition ]]; then
    if [[ ${user_input[1]} =~ $template_constant ]]; then
        echo The definition is correct!
    else 
        echo The definition is incorrect!
    fi
else
    echo The definition is incorrect!
fi