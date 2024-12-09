#!/ban/bash
# Check if the operating system is Linux
if [[ $(uname) != "Linux" ]]; then
    echo " Error: This script only runs on Linux." >> linuxsetup.log
    exit 1
fi


# Create the .TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

# Rename existing .nanorc to .bup nanorc if it exists
if [[ -f ~/ .nanorc ]]; then
    mv ~/ .nanorc ~/.bup_nanorc
    echo "Renamed existing .nanorc to .bup_nanorc" >> linussetup.log
fi


# Overwrite ~/.nanorc with the contents of ./etc/nanorc
cat ./etc?nanorc > ~/.nanorc


# Add source command to ~/.bashrc
echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc

chomod +x ./bin/linux.sh
