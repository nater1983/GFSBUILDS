#!/bin/bash

input_file="empty"

# Get the directory of the script
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Counter for generating numbered filenames
counter=1

while IFS= read -r name; do
    # Create a formatted filename
    filename=$(printf "%02d-build_%s.sh" "$counter" "$name")

    # Create the script content
    echo "#!/bin/bash" > "$script_dir/$filename"
    echo "echo Building $name" >> "$script_dir/$filename"
    echo "cd ../$name || exit 1" >> "$script_dir/$filename"
    echo "source $name.SlackBuild" >> "$script_dir/$filename"
    echo "upgradepkg --install-new --reinstall" >> "$script_dir/$filename"
    # Make the script executable
    chmod +x "$script_dir/$filename"

    # Increment the counter
    ((counter++))
done < "$input_file"

