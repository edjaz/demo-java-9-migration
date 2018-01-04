@echo off
echo ""
echo "--- LAUNCH ---"

echo " > run monitor"
echo ""

set JARS=
for %%f in (build\class-path\*.jar) do call set JARS=%%JARS%%;"%%f"
java --class-path %JARS% --module-path build/module-path --add-modules monitor.observer.alpha,monitor.observer.beta,monitor.utils,monitor.statistics,monitor.rest,java.xml.bind monitor.Main

set JARS=
