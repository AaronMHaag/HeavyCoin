#!/bin/bash
set -ex
poetry install
poetry run pre-commit install
sfdx autocomplete
printf "\n$(sfdx autocomplete:script bash)\n" >> ~/.bashrc
printf "\nalias ll='ls -alF'\n" >> ~/.bashrc