<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### ssh-config.d
> A plugin for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](http://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

Automatically generates OpenSSH config file (`~/.ssh/config`) from `*.config` files, located in `~/.ssh/config.d/` (nested directories inside are supported!) before every `ssh` execution.

Based on idea described described described described described described described described described in https://serverfault.com/questions/375525/can-you-have-more-than-one-ssh-config-file

## Install

```fish
$ omf install ssh-config.d
```


## Usage

Just use `ssh` as usual, that's it. `ssh-config.d` will automatically create required directory and move existing config to it on the first `ssh` invocation after plugin installation.

Of course, you can create this directory yourself and manually split your OpenSSH config file:
```
~/.ssh/config -> ~/.ssh/config.d/**.config
```

In case you've changed content of `~/.ssh/config.d/` directory and want to get updated `~/.ssh/config` file without executing `ssh` command, simply run `ssh-config.d`:

```fish
$ ssh-config.d
```

# License

[MIT][mit] © [rominf][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/{{USER}}
[contributors]:   https://github.com/{{USER}}/pkg-ssh-config.d/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
