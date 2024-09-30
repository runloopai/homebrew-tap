# runloopai/homebrew-tap

This is the official Homebrew tap for RunLoop AI's command-line tools.

## How to Install `rl-cli`

```bash
brew tap runloopai/tap
brew install rl-cli
```

## How to update the tap requirements

Use the generate resources translate the pip requirements.txt -> formula resources references.

```bash
python generate_resources.py ../rl-cli/requirements.txt
```

## To locally test / verify the formula before checking in

```bash
brew install --build-from-source --force ./Formula/rl-cli.rb
```

