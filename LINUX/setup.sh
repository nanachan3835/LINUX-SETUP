for file in *.sh; do
    if [[ -f "$file" ]]; then
        chmod +x "$file"
        echo "Changed permissions for: $file"
    fi
done

sudo apt-get update
sudo apt-get upgrade -y


for file in *.sh; do
 # Execute the script
        ./"$file"  # or you can use `bash "$file"` if you prefer
        echo "Executed: $file"
done


