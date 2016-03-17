# SYNOPSIS
#   ssh-config.d_ssh [ssh options]
#

function ssh-config.d_ssh -d "ssh wrapper that runs ssh-config.d before ssh execution"
  ssh-config.d
  and command ssh $argv
end
