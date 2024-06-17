#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Please provide a title for the topic"
fi

TITLE="$(echo $@ | tr ' ' '-' | tr [[:upper:]] [[:lower:]])"

filename="${TITLE}"
post="${filename}.md"
image="${filename}.webp"
postfile="docs/posts/${post}"

cat << EOF > $postfile
---
authors:
  - hatedabamboo
date:
  created: $(date +"%Y-%m-%d")
slug: TODO fill in
tags:
  - TODO fill in
title: "$@"
---
>>> Here be intro paragraph

<!-- more -->

![image](../assets/${image})

>>> Here be text

!!! abstract "Closing remarks"

    As always, feel free to
    [disagree](https://github.com/hatedabamboo/notes.hatedabamboo.me/issues) with
    me, [correct](https://github.com/hatedabamboo/notes.hatedabamboo.me/pulls) my
    mistakes and befriend me on one of the social media platforms listed below.
EOF

vim $postfile  
