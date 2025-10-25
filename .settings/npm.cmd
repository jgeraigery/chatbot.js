@goto :windows 2>nul
#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
"$SCRIPT_DIR/../node/npm" "$@"
exit $?

:windows
@echo off
"%~dp0..\node\npm.cmd" %*