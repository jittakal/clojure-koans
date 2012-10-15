@echo off
setLocal EnableDelayedExpansion
set CLASSPATH="
for /R ./lib %%a in (*.jar) do (
   set CLASSPATH=!CLASSPATH!;%%a
)
set CLASSPATH=!CLASSPATH!"
set CLASSPATH=%CLASSPATH%;D:\Users\jittakal\.m2\repository\fresh\fresh\1.0.2\fresh-1.0.2.jar;D:\Users\jittakal\.m2\repository\org\clojure\clojure\1.3.0\clojure-1.3.0.jar;D:\Users\jittakal\.m2\repository\jline\jline\0.9.94\jline-0.9.94.jar;src

java -Xmx1G -cp "%CLASSPATH%" clojure.main -i script\run.clj

