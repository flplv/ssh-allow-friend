#!/bin/bash
set -e

./ssh-allow-friend -g flplv &
sleep 10
cat $HOME/.ssh/authorized_keys
kill $!
