#!/bin/dash

# Generate a random ID for the stash
STASH_ID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 8 | head -n 1)

# Stash changes in the working directory if there are any and echo the same
git stash save "sdp.sh changes ($STASH_ID)" 
echo "Stashed changes with ID: $STASH_ID"

# Run sdp with arguments
sdp.sh "$1" "$2"

# Show the diff of the changes
git diff

# Ask for confirmation before committing
read -p "Do you want to commit these changes? [y/N] " yn
case $yn in
    [Yy]* )
        # Commit the changes
        git add .
        git commit -m "sdp.sh changes ($STASH_ID) - find: $1, replace: $2"
        ;;
    * )
        # Revert the changes 
        git reset --hard HEAD
        ;;
esac
