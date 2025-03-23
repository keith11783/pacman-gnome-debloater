#!/bin/bash

packages=(
    "xfce4-dict"
    "vim"
    "parole"
    "ristretto"
)

for package in "${packages[@]}"; do
    if pacman -Qs "$package" > /dev/null; then
        sudo pacman -Rns "$package" --noconfirm
    fi
done
