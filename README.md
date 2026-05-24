# homebrew-radpresence

Homebrew tap for [RAD Presence](https://www.radpresence.com) — RetroAchievements Discord Rich Presence.

## Install

```sh
brew tap raz0red/radpresence
brew install radpresence
```

## Setup

Save your RetroAchievements credentials:

```sh
radpresence set --username YOUR_RA_USERNAME --apikey YOUR_API_KEY
```

Then start as a background service (starts automatically on login):

```sh
brew services start radpresence
```

Or run manually in the foreground:

```sh
radpresence run
```

## Update

```sh
brew update
brew upgrade radpresence
```

## More

See the [RAD Presence README](https://github.com/raz0red/RADPresence#readme) for full documentation.
