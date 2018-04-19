# Emacs for Everything

This is my personal Emacs configuration, recently re-written for easy modification. I have attempted to break down everything into self-contained blocks that can ('mostly') be removed without causing initialisation errors.

Emacs supports a variety of languages, but I have added hooks for a several languages - particularly around focusing particularly on web development.

The style is modelled after atom. It is aesthetically pleasing and works well with tile managers, like xmonad.

Not all snippets are my own work. The goal of this project is to provide good version control for myself and make the transition to Emacs less error-filled for new users. I have been pragmatic and re-used other people's work as required. This config is in under active development.

A good resource for building your own multi-purpose emacs:
https://github.com/emacs-tw/awesome-emacs

## Installation

git clone git@github.com:DMscotifer/emacs-config.git ~/.emacs.d

## Packages

### Elfeed

The RSS reader, elfeed, loads ~/.emacs.d/feeds.opml instead of reading it directly off the init.el file (adding new feeds will add it to the init.el and will need to be pruned manually at the moment).

### Save Desktop

emacs.desktop is saved when emacs is closed down. It saves the buffers you have open and the frame order for when you log back in