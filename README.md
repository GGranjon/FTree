# Ftree

A lightweight, recursive Bash script to visualize directory architectures directly in your terminal. Optimized for Git Bash, macOS, and Linux.

---

## Features

- Recursive Depth Control: Specify how deep you want to go.
- Smart Ignoring: Use Regex patterns to skip heavy folders like node_modules or .git.
- Hidden File Support: Automatically detects and displays dotfiles.
- Flexible Pathing: Supports both absolute and relative paths.
- Smart Formatting: Shows a visual "..." indicator when depth limit is reached.

---

## Usage

Basic command:
```bash
ftree
```

### Options

| Flag | Description | Example |
| :--- | :--- | :--- |
| -p | **Path** : Sets the target directory, defaults to . | ftree -p ./src |
| -d | **Depth** : Limits how many levels deep to traverse, defaults to 6 | ftree -d 2 |
| -i | **Ignore** : A Regex pattern to exclude files/folders, nothing is ignored by default | ftree -i "node_modules|\.env" |
| -a | **Absolute** : Shows absolute path in header | ftree -a |
| -h | **Help** : Displays the help menu | ftree -h |

### Example
```bash
ftree -d 3 -i "node_modules|\.git"
```

Output:
```text
MyAwesomeApp
├── src
│   ├── components
│   │   ├── Header.js
│   │   ├── Footer.js
│   │   └── ...
│   ├── utils
│   │   └── api.js
│   └── App.js
├── public
│   ├── favicon.ico
│   └── index.html
├── .gitignore
├── mtree.sh
├── package.json
└── README.md
```

---

## Installation

### Windows (Git Bash)
1. Create a folder for your scripts, e.g., C:\scripts.
2. Move ftree file into that folder.
3. Add C:\scripts to your Windows Environment Variables (Path).
4. Restart your terminal.

### macOS and Linux
1. Create a bin directory: mkdir -p ~/bin
2. Move the script: mv ftree ~/bin/ftree && chmod +x ~/bin/ftree
3. Add export PATH="$HOME/bin:$PATH" to your .zshrc or .bashrc.
4. Refresh: source ~/.zshrc (or .bashrc).

---

## License
MIT License
