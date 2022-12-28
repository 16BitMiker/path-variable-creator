# $PATH Variable Creator

Recursively scans a folder structure to determine all sub folders then outputs a string suitable for inclusion in your **.bashrc** file.

## Details

- **path-variable-creator.pl** - outputs a *$PATH* variable.
- **collect-scripts-location.rb** - gets scripting file names recursively (in case you forgot).

## Example Output

```
$PATH="/Users/me/Desktop/github/path-variable-creator/folder-test:/Users/me/Desktop/github/path-variable-creator/folder-test/app1:/Users/me/Desktop/github/path-variable-creator/folder-moar:/Users/me/Desktop/github/path-variable-creator/folder-fun:/Users/me/Desktop/github/path-variable-creator/folder-fun/app2:$PATH"
```

