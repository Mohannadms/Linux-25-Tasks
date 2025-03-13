#!/bin/bash

read -p "Enter your name: $name" name
read -p "Enter your age: $age" age
read -p "Enter your favorite programming language: $prog_lang" prog_lang
echo "Thank you, $name! Your profile has been created successfully with the following details:"
echo "- Name: $name"
echo "- Age: $age"
echo "- Favorite Programming Language: $prog_lang"
