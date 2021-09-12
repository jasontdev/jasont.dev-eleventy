#!/usr/bin/env bash
aws s3 sync --acl public-read _site/ s3://jasont.dev
