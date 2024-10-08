#!/usr/bin/env bash

# `tre` is a shorthand for `tree` with hidden files and color enabled, ignoring
# the `.git` directory, listing directories first. The output gets piped into
# `less` with options to preserve color and line numbers, unless the output is
# small enough for one screen.
function tre() {
    tree -aC -I '.git|env|.snakemake|node_modules|bower_components' --dirsfirst "$@" | less -FRNX;
}
