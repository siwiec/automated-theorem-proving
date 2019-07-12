#!/bin/bash


echo "Running pre-commit hook..."
make docs
git add docs/*
