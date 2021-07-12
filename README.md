Original script copyright Matt Might.

Bash tool based on the shell scripts available at <http://matt.might.net/articles/shell-scripts-for-passive-voice-weasel-words-duplicates/>.

Place alternative word list in `$HOME/.words`, each word on one line. Can be expanded with some regex.

Install with:

```bash
chmod +x proof
cp proof /usr/local/bin # (or whereever your path is)
```

Then use:

```bash
proof [textfile]
```

GitHub Action:

```yml
name: Proof document
on: [push]
jobs:
  build_latex:
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v2
      - name: Proof
        uses: pfandzelter/proof@v0.1.4
        with:
          path: *.tex
```
