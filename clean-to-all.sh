branches=("master" 
"branch-2" 
"branch-3")
directory_name="FLOWER.jpg"
commit_message="Remove FLOWER.jpg file"

for branch in "${branches[@]}"; do
    # Checkout the branch
    git checkout "$branch"

    # Remove the directory
    git rm -r "$directory_name"

    # Commit the changes
    git commit -m "$commit_message"
    
        # Push the changes to the remote branch
    git push origin "$branch"
done
