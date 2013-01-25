function cd
  if test -d $argv
    autojump -a $argv
  end
  builtin cd
end

# should to put it to config.fish
function j
  cd (command autojump $argv)
end

## Completion
# function __fish_complete_autojump_targets
#   set -e argv[1]
#   set newarg (echo $argv | sed -e 's/__//')
#   set output (autojump --completion $newarg)
#   for item in $output;
#       echo $item
#   end
# end
# complete -x -c j -a "(__fish_complete_autojump_targets (commandline -o))"