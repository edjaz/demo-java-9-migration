@echo off
echo ""
echo "--- LAUNCH ---"

rem All JARs generated from child projects are copied in monitor\target\libs,
rem so there is no need to dig in the child projects' target directories.
set MYCP=.\monitor\target\*;.\monitor\target\libs\*

echo " > run monitor"
echo ""

java -cp %MYCP% monitor.Main

set MYCP=
