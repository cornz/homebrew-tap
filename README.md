# Homebrew Tap

Homebrew casks for macOS apps maintained by [cornz](https://github.com/cornz).

## Apps

| App | Description | Install |
| --- | --- | --- |
| [DevControlRoom](https://github.com/cornz/DevControlRoom) | Run and monitor local development services from the menu bar. | `brew install --cask cornz/tap/devcontrolroom` |
| [TrimWM](https://github.com/cornz/TrimWM) | Fast, animation-free tiling window manager with BSP and scrolling columns. | `brew install --cask cornz/tap/trimwm` |

## Install

Install a cask directly with the commands in the table above, or add the tap once:

```sh
brew tap cornz/tap
brew install --cask devcontrolroom
brew install --cask trimwm
```

## Upgrade

Upgrade one app:

```sh
brew upgrade --cask devcontrolroom
brew upgrade --cask trimwm
```

Or upgrade every outdated cask from this tap:

```sh
brew upgrade --cask
```

## Uninstall

Remove an app while keeping its configuration:

```sh
brew uninstall --cask devcontrolroom
brew uninstall --cask trimwm
```

Remove an app together with its configuration:

```sh
brew uninstall --cask --zap devcontrolroom
brew uninstall --cask --zap trimwm
```

The casks install signed application bundles into `/Applications`. DevControlRoom
supports macOS 14 Sonoma or newer on Apple Silicon and Intel. TrimWM's current
requirements are documented in its project repository.
