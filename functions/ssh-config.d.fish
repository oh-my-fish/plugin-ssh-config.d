# SYNOPSIS
#   ssh-config.d
#

function ssh-config.d -d "Update ~/.ssh/config file from files in ~/.ssh/config.d/ dir"
  set -g ssh_config (config ssh-config.d --get ssh_config)
  set -g ssh_config_dir (config ssh-config.d --get ssh_config_dir)

  function move_ssh_config_to_ssh_config_dir
    mkdir $ssh_config_dir
    mv $ssh_config $ssh_config_dir/base.config
    echo "Your OpenSSH config was moved to new directory $ssh_config_dir" >&2
  end

  function ssh_config_is_handmade
    [ -f $ssh_config ]; and [ -r $ssh_config ]; and not cat $ssh_config | grep -q "ssh-config.d"
  end

  function backup_ssh_config
    __bak cpbak 'cp -aH' $ssh_config
  end

  function generate_ssh_config
    config ssh-config.d --get warn >$ssh_config
    cat $ssh_config_dir/**.config >>$ssh_config
  end


  if not [ -d $ssh_config_dir ]
    move_ssh_config_to_ssh_config_dir
  end

  if ssh_config_is_handmade
    backup_ssh_config
  end

  generate_ssh_config
end
