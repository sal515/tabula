@echo off
setlocal

@REM Example Java Path: C:\Program Files\Java\jdk-1.8\bin\java.exe
@REM Example JRuby Path: C:\<path_to_jruby>\jruby-dist-9.1.5.0-bin\jruby-9.1.5.0\bin\jruby.exe

@REM RUN Example:
@REM C:\Projects\jruby\jruby-dist-9.1.5.0-bin\jruby-9.1.5.0\bin\jruby -G -r jbundler -S rackup

set JAVA_HOME=C:\Program Files\Java\jdk-1.8
set JRUBY_HOME=C:\Projects\jruby\jruby-dist-9.1.5.0-bin\jruby-9.1.5.0

set PATH=%JAVA_HOME%\bin;%PATH%
echo Java version set for this session:
java -version
if %ERRORLEVEL% neq 0 (
    echo Failed to set Java version correctly.
    goto end
)

echo Setting up JRuby in the session PATH:
set PATH=%JRUBY_HOME%\bin;%PATH%
echo JRuby version set for this session:
jruby.exe -v
if %ERRORLEVEL% neq 0 (
    echo Failed to access JRuby version.
    goto end
)

:end
cmd

endlocal