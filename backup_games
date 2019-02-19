#!/bin/sh
#
# Makes a backup of the save files of my games.
#
# HOW TO USE:
# Run ./backup_games YOUR_BACKUP_FOLDER
# For example ./backup_games ~/backup/games/
# Put your Windows username below (if using Windows)
WIN_USER="Tomas"
#
# Tomas Garcia de Miguel
# https://github.com/togademi

ON_LINUX=true
if [ $# -ne 0 ]; then
  BACKUP_DIR="$1"
elif [ -d /mnt/c/Users/ ]; then
  BACKUP_DIR=/mnt/d/backup/games/
  ON_LINUX=false
else
  BACKUP_DIR=~/backup/games/
fi


##############################################
# Backups the save files of the game
# Globals:
#   BACKUP_DIR
# Arguments:
#   Directory of the game save files (path)
#   Name of the game (string)
##############################################
backup_game() {
  if [ -d "$1" ]; then
    cp -ru "$1" "$BACKUP_DIR"

    if [ $? -eq 0 ]; then
      echo "$2 backed up"
    else
      echo "WARNING: $2 failed to back up"
    fi
  fi
}


if [ $ON_LINUX = true ]; then # Linux games

  # NightSky
  backup_game ~/.local/share/nightsky/ "NightSky"

  # LYNE
  backup_game ~/".config/unity3d/Thomas Bowker/LYNE/" "LYNE"

  # FasterThanLight
  backup_game ~/.local/share/FasterThanLight/ "FasterThanLight"

  # Pony Island
  backup_game ~/".config/unity3d/Daniel Mullins Games/Pony Island/" "Pony Island"

else # Windows games

  # Dark Souls 3
  backup_game /mnt/c/Users/"$WIN_USER"/AppData/Roaming/DarkSoulsIII/ "Dark Souls 3"

  # Overcooked
  backup_game /mnt/c/Users/"$WIN_USER"/AppData/LocalLow/"Ghost Town Games"/Overcooked/ "Overcooked"

  # The Messenger
  backup_game /mnt/c/Users/"$WIN_USER"/AppData/LocalLow/"Sabotage Studio"/"The Messenger"/ "The Messenger"

  # Subnautica
  backup_game /mnt/c/Users/"$WIN_USER"/AppData/LocalLow/"Unknown Worlds"/Subnautica/Subnautica/ "Subnautica"
fi

exit 0
