directory="/Users/xypnox/Backups/"
cd ~/Library/Application\ Support/Mex\ Alpha/

date_human=$(date +'%H_%M_%S_%d_%F')

archive_name="mex_backup_$date_human"

for source in ~/Library/Application\ Support/Mex\ Alpha/*.json; do
    basename=${source##*/}
    cp "$source" "${directory}/${date_human}.${basename}.${basename##*.}"
done
