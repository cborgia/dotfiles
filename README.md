# cborgia Dotfiles

These are my dotfiles. They are currently undergoing a rewrite focused on the idea of a Module Based Directory Structure. 

### To Install
run: `sh install` from within this repos directory. 

If you encounter any errors with the brew install lines, in order to complete the installs, you will have to address any brew install issues and rerun until there are no issues. After all brew installing is complete the install script will move onto all the other install files.

### Module Based Directory Structure

The `mods` directory is a collection of directories -each directory within holds one or more files, that relate to each other. This allows for easier management whereby each module can have it's own setup file, shell environment file and symbolic links. The idea of modules was borrowed from the "topics" that [holman](https://github.com/holman/dotfiles) has in his dotfiles.