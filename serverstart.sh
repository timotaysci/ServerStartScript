#!/bin/bash
killall screen
screen -S Personal -d -m
screen -S Personal -X stuff $'cd ~/website/Personal-Site/^M' &&
screen -S Personal -X stuff $'bundle exec jekyll build^M'&&
screen -S Personal -X stuff $'bundle exec jekyll serve^M'&
#MOFNews
screen -S MOFNews -d -m
screen -S MOFNews -X stuff $'cd ~/website/MOFNews/^M' &&
screen -S MOFNews -X stuff $'bundle exec jekyll build^M'&&
screen -S MOFNews -X stuff $'bundle exec jekyll serve^M'&
#emacsforsci
screen -S emacsforsci -d -m
screen -S emacsforsci -X stuff $'cd ~/website/emacsforscience^M' &&
screen -S emacsforsci -X stuff $'bundle exec jekyll build^M'&&
screen -S emacsforsci -X stuff $'bundle exec jekyll serve^M'&
#TJE
screen -S TJE -d -m
screen -S TJE -X stuff $'cd ~/website/TJE/^M' &&
screen -S TJE -X stuff $'bundle exec jekyll build^M'&&
screen -S TJE -X stuff $'bundle exec jekyll serve^M'&+
#Need to add sleep here to give script time to run and it's a silly bodge
#TODO - add a wait with process IDs
sleep 30
printf "Done! \n"

