# iterate through all files in the 'inhere' directory
for file in ~/inhere/*; do
    # By using file we can check the file content type, to output more
    # specific data the -i flag is used to get mime type information.
    # Then we can use grep to filter out files that match readable text. NOTE:
    # The Bandit instructions say human-readable text, but the file command
    # does not use that terminology. The closest match is
    # 'text/plain; charset=us-ascii'
    if file -i "$file" | grep -q 'text/plain; charset=us-ascii'; then
        cat "$file"
    fi
done
