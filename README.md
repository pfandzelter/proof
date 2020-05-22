Original script copyright Matt Might.

Bash tool based on the shell scripts available at http://matt.might.net/articles/shell-scripts-for-passive-voice-weasel-words-duplicates/.

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
