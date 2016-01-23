#!/bin/bash
echo "Deploying internal build"
echo $TRAVIS_BRANCH

if [[ $TRAVIS_BRANCH == "develop" ]]
then 
	echo "this is the develop branch"
fi
