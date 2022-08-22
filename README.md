# useful-scripts-archive
A collection of GNU/Linux (ba)sh scripts to do various things more easily.

## Genshin Impact auto ice-bridging
This trick can be done directly in shell prompt using [Shell Parameter Expansion](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html). So, no file needed, only single dependency.

* Dependency: [xdotool](https://command-not-found.com/xdotool)
* Game-specific requirements:
  * You have 5 seconds before first keypress;
  * Genshin should be in focus within 5 seconds;
  * Kaeya's Elemental Skill must be ready;
  * Turn to water forward.

Code:
```bash
sleep 5 && while true; do xdotool key e sleep 1.5 keydown w sleep 1.3 keyup w sleep 3.75; done
```
