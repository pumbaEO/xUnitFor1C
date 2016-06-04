echo off
SET mypath=%~dp0
SETLOCAL

set BUILDPATH=.\build
set EPFPATH=.\
if not exist %EPFPATH%\xddTestrunner set BUILDPATH=..\build
if not exist %EPFPATH%\xddTestrunner set EPFPATH=..\

rem set RUNNER_IBNAME=/F"D:\work\base\dev"
rem set RUNNER_DBUSER=base
rem set RUNNER_DBPWD=234567890

SET RUNNER_ENV=production

oscript %mypath%/runner.os compileepf %EPFPATH%\ %BUILDPATH%\ %connstring% %USERPWD%
