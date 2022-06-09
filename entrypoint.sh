#!/bin/sh -l

echo "Hello $1"
echo "---> get input argument who-to-greet:"$INPUT_WHO_TO_GREET
echo "---> get input argument myname:"$INPUT_MYNAME
echo "---> get GITHUB_WORKSPACE:"$GITHUB_WORKSPACE
echo "---> ls $GITHUB_WORKSPACE:"
ls $GITHUB_WORKSPACE
echo "--------------------------"
echo "---> GITHUB_PATH:"$GITHUB_PATH
echo "---> PATH:"$PATH
echo "---> get GITHUB_REPOSITORY:"$GITHUB_REPOSITORY
echo "---> get GITHUB_REF:"$GITHUB_REF
echo "---> running task url:"$GITHUB_SERVER_URL/$GITHUB_REPOSITORY/actions/runs/$GITHUB_RUN_ID

echo "::warning file=entrypoint.sh,line=4,col=5,endColumn=7::Missing semicolon"
echo "::error file=entrypoint.sh,line=1,col=3,endColumn=10::Missing semicolon"

echo "::warning file=README.md,line=4,col=5,endColumn=7::Missing semicolon"
echo "::error file=README.md,line=1,col=3,endColumn=10::Missing semicolon"

echo "::warning file=action.yml,line=4,col=5,endColumn=7::Missing semicolon"
echo "::error file=action.yml,line=1,col=3,endColumn=10::Missing semicolon"

echo "::error file=Dockerfile,line=3,col=1,endColumn=8::Line too long"
echo "::warning file=Dockerfile,line=5::Line too long"

echo "::error file=action.yml,line=3,col=1,endColumn=8::Line too long"
echo "::warning file=action.yml,line=5::Line too long"

echo "::set-output name=SELECTED_COLOR::green"

echo "---> GITHUB_PATH:"$GITHUB_PATH

time=$(date)
echo "::set-output name=time::$time"