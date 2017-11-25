#!bin/bash

echo Repo: $TRAVIS_REPO_SLUG Pull Request: $TRAVIS_PULL_REQUEST Branch: $TRAVIS_BRANCH

if [ "$TRAVIS_REPO_SLUG" = "slixes/parent" ] && [ "$TRAVIS_PULL_REQUEST" = "false" ] && [ "$TRAVIS_BRANCH" = "master" ]

then
  export GIT_COUNT=`git rev-list HEAD --count`
  echo "Starting publish to Sonatype...  $GIT_COUNT"

    mvn deploy
  RETVAL=$?

  if [ $RETVAL -eq 0 ]; then
    echo 'Completed publish!'
  else
    echo 'Publish failed.'
    return 1
  fi

fi