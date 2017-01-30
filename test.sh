#!/bin/bash
set -e

./ssh-allow-friend -g felipe-lavratti &
sleep 10
cat $HOME/.ssh/authorized_keys
kill $!
