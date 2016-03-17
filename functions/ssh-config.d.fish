# SYNOPSIS
#   ssh-config.d
#

function ssh-config.d -d "Update ~/.ssh/config file from files in ~/.ssh/config.d/ dir"
  if not cat (config ssh-config.d --get ssh_config) | grep -q "ssh-config.d"
    cpbak (config ssh-config.d --get ssh_config)
  end
  config ssh-config.d --get warn >(config ssh-config.d --get ssh_config)
  cat (config ssh-config.d --get ssh_config_dir)/**.config >>(config ssh-config.d --get ssh_config)
end
