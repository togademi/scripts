#!/usr/bin/env python3
import os
import re
import shutil

screenshots_dir = os.getcwd()

def is_steam(filename):
    pattern = re.compile("[0-9]{1,}_[0-9]{1,}_1.png")
    if pattern.match(filename):
        return True
    return False

folders = {
    "211420": "DarkSouls",
    "374320": "DarkSouls3",
    "582010": "MHW",
    "742120": "DragonQuest11"
}

def getFolder(filename):
    if is_steam(filename):
        prefix = filename[:-21]
        print(prefix)
    return folders[prefix]

def move(file):
    shutil.move(file, getFolder(file))

def main():
    for file in os.listdir(screenshots_dir):
        print(file)
        if is_steam(file):
            move(file)

if __name__ == '__main__':
    main()
