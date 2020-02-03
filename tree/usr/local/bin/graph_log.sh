#!/bin/bash

# show nice graph of git commits

exec git log --graph --all --decorate --oneline
exit 1
