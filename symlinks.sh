#!/bin/bash

find ~/dotfiles -name '\.*' -type f -exec ln -sf {} ~ \;
