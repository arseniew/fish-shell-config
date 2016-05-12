function git_rm_merged 
  for branch in (git branch --merged | grep -v \* | sed -e 's/^[ ]*//') 
    git branch -d $branch
    and git push $argv --delete $branch
  end
end
