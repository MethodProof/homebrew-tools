# homebrew-methodproof

Homebrew tap for the [MethodProof CLI](https://github.com/MethodProof/methodproof-cli).

## Install

```bash
brew install methodproof/methodproof/methodproof
```

Or add the tap first:

```bash
brew tap methodproof/methodproof
brew install methodproof
```

## Usage

```bash
methodproof init      # choose what to capture, install hooks
methodproof start     # begin recording
# ... code normally ...
methodproof stop      # stop and build process graph
methodproof view      # inspect captured data
```

## Update

```bash
brew upgrade methodproof
```
