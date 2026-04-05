# homebrew-tools

Homebrew tap for [MethodProof](https://github.com/MethodProof/methodproof-cli) tools.

## Install

```bash
brew install methodproof/tools/mp
```

Or add the tap first:

```bash
brew tap methodproof/tools
brew install mp
```

## Usage

```bash
mp init      # choose what to capture, install hooks
mp start     # begin recording
# ... code normally ...
mp stop      # stop and build process graph
mp view      # inspect captured data
```

## Update

```bash
brew upgrade mp
```
