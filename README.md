# chime

This repository contains a simple script that plays a Westminster clock chime.

Requires `aplay` CLI.

### Example crontab
```
0,15,30,45 8-22 * * * cd /path/to/repo && ./chime.sh > /dev/null 2>&1
0 23 * * * cd /path/to/repo && ./chime.sh > /dev/null 2>&1
```
