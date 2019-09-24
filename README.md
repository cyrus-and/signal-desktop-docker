# Signal Desktop Docker

Clone this repository for each Signal account, for example:

```
git clone https://github.com/cyrus-and/signal-desktop-docker my-signal-account
```

To import existing Signal Desktop data put it in the `Signal` directory, otherwise it will start from scratch, for example:

```
cp -r ~/.config/Signal/ .
```

Just run `make` to start Signal Desktop.

Use `make build` to rebuild the image in order to perform a system upgrade (if really needed), `make clean-docker` to remove everything Docker-wise and `make clean-signal` to remove everything Signal-wise (use it with care).
