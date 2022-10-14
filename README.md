# useful-scripts-archive

A collection of GNU/Linux (ba)sh scripts to do various things more easily.

## Genshin Impact auto ice-bridging

Using [Shell Parameter Expansion](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html), you can perform this trick directly at the shell prompt. No additional files are needed, only a single dependency.

* Dependency: [xdotool](https://command-not-found.com/xdotool)
* Game-specific requirements:
  * Genshin should be in focus;
  * You have 5 seconds before the first keypress;
  * Kaeya's Elemental Skill must be ready;
  * Turn to the water source.

Code:
```bash
sleep 5 && while true; do xdotool key e sleep 1.5 keydown w sleep 1.3 keyup w sleep 3.75; done
```

## Mass rename files with pattern

```
for file in *; do mv -- "$file" "${file//a/b}"; done
```
This will replace all `a` in files in the current directory with `b`.

## Important note

A lot of things here aren't bugless. If you have any questions or problems, you can always contact the author using the [Issues](https://github.com/PackmanDude/useful-scripts-archive/issues) or [Discussions](https://github.com/PackmanDude/useful-scripts-archive/discussions) sections. Contributions are welcome!
