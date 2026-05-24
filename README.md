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

## Web UI (optional)

RAD Presence includes a browser-based UI for live status, logs, and settings. Enable it:

```sh
radpresence set --web-ui
```

Then open it in your browser:

```sh
radpresence open
```

Or navigate to `http://127.0.0.1:7842` directly. The UI is only accessible from your local machine.

## Update

```sh
brew update
brew upgrade radpresence
```

## More

See the [RAD Presence README](https://github.com/raz0red/RADPresence#readme) for full documentation.
