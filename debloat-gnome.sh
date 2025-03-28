#!/bin/bash

packages=(
    "epiphany"
    "gnome-calculator"
    "gnome-clocks"
    "gnome-calendar"
    "totem"
    "decibels"
    "gnome-music"
    "gnome-photos"
    "gnome-maps"
    "gnome-contacts"
    "gnome-software"
    "gnome-weather"
    "gnome-text-editor"
    "gnome-characters"
    "gnome-connections"
    "vim"
    "gnome-tour"
    "gnome-remote-desktop"
    "malcontent"
    "snapshot"
)

for package in "${packages[@]}"; do
    if pacman -Qs "$package" > /dev/null; then
        sudo pacman -Rns "$package" --noconfirm
    fi
done
