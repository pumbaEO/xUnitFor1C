#!/bin/bash
called_path=${0%/*}
stripped=${called_path#[^/]*}
real_path=`pwd`$stripped
echo "called path: $called_path"
echo "stripped: $stripped"
echo "pwd: `pwd`"
echo "real path: $real_path"

connstring=
USERPWD=
export RUNNER_ENV=production
#connstring=--ibname /F"~/projects/onec/itil"
#USERPWD=--db-user base --db-pwd 234567890
mkdir $real_path/../build/

oscript $real_path/runner.os compileepf $real_path/../ $real_path/../build/ $connstring $USERPWD 

