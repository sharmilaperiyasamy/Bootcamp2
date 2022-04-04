#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sound : " ${sounds[dog]}
echo "Animals" ${!sounds[@]}
echo "All animals sounds" ${sounds[@]}
echo "Number of animals" ${#sounds[@]}
