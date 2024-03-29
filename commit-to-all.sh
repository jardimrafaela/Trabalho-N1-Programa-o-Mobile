#!/bin/bash

branches=("master" "branch-2" "branch-3")
file_name="C:\Users\rgj4\Documents\repo github test\k8s"
commit_message="adding this diretory update to all branches"

for branch in "${branches[@]}"; do
    # Checkout the branch
    git checkout "$branch"

    # Insert the file
    cp -r "$file_name" .

    # Add the file
    git add "$(basename "$file_name/*")"

    # Commit the changes
    git commit -m "$commit_message"

    # Push the changes to the remote branch
    git push origin "$branch"
done

