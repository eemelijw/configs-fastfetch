# configs-fastfetch
Collection of my fastfetch configuration files

## Minima
A simple and minimal configuration for fastfetch, designed to occupy only a small space on your terminal.

<img src=Minima/fastfetch-Minima-dark.png width = 400, height = 120><img src=Minima/fastfetch-Minima-pink.png width = 400, height = 120>

> Preview images were taken on Arch Linux, but the minimal logo should work on other distros too.

## Installation
### Automatic installation
Minima:
```bash
curl -fLO https://raw.githubusercontent.com/eemelijw/configs-fastfetch/main/Minima/install-Minima.sh; bash install-Minima.sh
```
> The automatic installer creates a backup of the current fastfetch configuration in use when it installs another configuration. The installer deletes itself after installation. Backups and configurations made by the installer are located in `~/.config/fastfetch/`

---
### Manual installation
**1.** Download the `config.jsonc` file you want to use.

**2.** Move the `config.jsonc` file to directory `~/.config/fastfetch/config.jsonc`.

> `fastfetch --list-config-paths` can be used to locate optional directories for fastfetch configuration files.

**3.** Place the `config.jsonc` file in one of those directories.

> You *might* need to specify the location of the configuration file for fastfetch with `fastfetch -c /your/path/to/config.jsonc`.

## Customization
Fastfetch configuration files are easy to customize. You just need to locate the `config.jsonc` file and edit it.

[Options for fastfetch configuration.](https://github.com/fastfetch-cli/fastfetch/wiki/Configuration)
