# My Dotfiles

Current as of _January 26, 2013_

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for shell management (tweaks to the bootstrap)
* [janus](https://github.com/carlhuda/janus) for vim management
* .osx (useful after HD formats)
* .brew (useful after HD Formats
* .functions
* and a few .aliases_* files 

and a few theme tweaks to terminal, vim and sublime text.

As always, this is a work in progress. I do not recomend a fork, just have a look and impliment what works for you...

## How it works
I do not edit the dotfiles in my home directory. Instead, I  edit the files I have located in this repo and then run a small script to push changes to my home directory. By doing it this way I can version control my dotfiles, share them, and control when edits are actually implimented.


## Some unique stuff I do

**Multiple Alias Files:**  I prefer my aliases files to be split up among many smaller files, so I've added a way to load multiple alias files.

**Path Management:** I prefer my path to be easily readable, so there is a path file and each path is on it's own line.


## Files not included:
The .gitignore file ignores two file types:

1. Any file appeneded with private 
2. My shuttle.json file.

The files I keep privaet are mostly project specific CD commnads and project speceific SSH commands.

## To DO
* add cmatrix feature on terminal boot
* fine tune bootstrap file
* Add more advanced propt featres:
	* is this a fresh install?
	* 
* Get Bash to use extra dotfiles files too (not just zsh)
* Figure out good way to impliment .ssh (pub and private key)
* 


