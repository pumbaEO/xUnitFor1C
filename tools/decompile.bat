SET mypath=%~dp0
rem SET connstring=--ibname /F"C:\Users\eugens\Documents\Rarus\ITIL\1"
rem SET USERPWD=--db-user base --db-pwd 234567890
SET connstring=
SET USERPWD=
SET RUNNER_ENV=production

set BUILDPATH=.\build
set EPFPATH=.\
if not exist %EPFPATH%\xddTestrunner set BUILDPATH=..\build
if not exist %EPFPATH%\xddTestrunner set EPFPATH=..\

oscript %mypath%/runner.os decompileepf %BUILDPATH%\ %EPFPATH% %connstring% %USERPWD%

