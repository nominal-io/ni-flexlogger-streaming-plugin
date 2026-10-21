#!/usr/bin/env just --justfile

# The plugins themselves build in LabVIEW, from the build specification in each plugin's
# .lvproj, so there are no recipes for them here.

# Show what is available
default:
    @just --list

# The user docs in docs/, published on the Nominal docs hub at /ni/flexlogger/. Python is here
# only for these, through uv. Warnings fail the build, as they do in CI.
#
# Build the docs into docs/_build/dirhtml
build-docs:
    uv run --group docs sphinx-build -E -W --keep-going -b dirhtml docs docs/_build/dirhtml

# Serve the docs on http://127.0.0.1:8000, rebuilding on page edits
serve-docs:
    uv run --group docs --with sphinx-autobuild sphinx-autobuild -b dirhtml docs docs/_build/dirhtml
