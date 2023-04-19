#!/usr/bin/env bash

profile_template="[user]\n  email = \n  signingkey = \n"

# Create template for git configs
if [ ! -s config/git/personal-profile.gitconfig ]; then
  printf "$profile_template" > config/git/personal-profile.gitconfig
fi

if [ ! -s config/git/work-profile.gitconfig ]; then
  printf "$profile_template" > config/git/work-profile.gitconfig
fi
