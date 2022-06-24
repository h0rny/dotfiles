#!/bin/bash
username='h0rny'

test ! -d "$HOME/.ssh" && mkdir .ssh
wget -qO - https://github.com/$username.keys | cat >> ~/.ssh/authorized_keys
