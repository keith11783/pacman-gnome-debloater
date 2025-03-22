#!/bin/bash

packages=(
    "epiphany"
    "gnome-calculator"
    "gnome-clocks"
    "gnome-calendar"
    "totem"
    "gnome-music"
    "gnome-photos"
    "gnome-contacts"
    "gnome-software"
    "gnome-weather"
    "gedit"
)

for package in "${packages[@]}"; do
    if pacman -Qs "$package" > /dev/null; then
        sudo pacman -Rns "$package" --noconfirm
    fi
done
