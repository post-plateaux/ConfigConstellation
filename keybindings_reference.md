# System-Wide Keybindings Reference

## Hyprland Window Manager

### Essential Controls
- Print Screen: Capture selected area (saves to ~/Pictures/Screenshots and copies to clipboard)
- Super + Print Screen: Capture active window (saves to ~/Pictures/Screenshots and copies to clipboard)
- Super + Shift + Print Screen: Capture full screen (saves to ~/Pictures/Screenshots and copies to clipboard)
- Super + Return: Open kitty terminal
- Super + Q: Kill active window
- Super + Space: Launch fuzzel (app launcher)
- Super + E: Open yazi file manager in kitty
- Super + F: Toggle window fullscreen (move to own workspace)
- Super + Shift + Q: Exit Hyprland
- Super + L: Lock screen
- Super + Shift + P: Open power menu (wlogout)

### Workspace Navigation
- Super + 1: Switch to workspace 1
- Super + 2: Switch to workspace 2
- Super + 3: Switch to workspace 3
- Super + 4: Switch to workspace 4

### Hardware Controls
#### Brightness
- XF86MonBrightnessUp: Increase screen brightness by 5%
- XF86MonBrightnessDown: Decrease screen brightness by 15%
- XF86KbdBrightnessUp: Increase keyboard backlight by 10%
- XF86KbdBrightnessDown: Decrease keyboard backlight by 10%

#### Audio
- XF86AudioRaiseVolume: Increase volume by 5%
- XF86AudioLowerVolume: Decrease volume by 5%
- XF86AudioMute: Toggle audio mute
- XF86AudioMicMute: Toggle microphone mute

### Gestures
- 3-finger swipe: Switch workspaces

## Yazi File Manager

### Navigation
- Arrow keys or h/j/k/l: Navigate files and directories
- h or ←: Leave current directory (go to parent)
- l or →: Enter hovered directory
- j or ↓: Move cursor down
- k or ↑: Move cursor up
- K: Seek up 5 units in preview
- J: Seek down 5 units in preview
- gg: Move cursor to the top
- G: Move cursor to the bottom
- z: Jump to directory using zoxide
- Z: Jump to directory or reveal file using fzf

### Selection
- Space: Toggle selection of hovered file/directory
- v: Enter visual mode (selection mode)
- V: Enter visual mode (unset mode)
- Ctrl + a: Select all files
- Ctrl + r: Inverse selection of all files
- Esc: Cancel selection

### File Operations
- o: Open selected files
- O: Open selected files interactively
- Enter: Open selected files
- Shift + Enter: Open selected files interactively
- Tab: Show file information
- y: Yank (copy) selected files
- x: Yank (cut) selected files
- p: Paste yanked files
- P: Paste yanked files (overwrite if exists)
- Y/X: Cancel yank status
- d: Trash selected files
- D: Permanently delete selected files
- a: Create file (end with / for directories)
- r: Rename selected file(s)
- .: Toggle hidden files visibility
- ;: Run shell command
- :: Run shell command (block until finished)
- -: Symlink absolute path of yanked files
- _: Symlink relative path of yanked files
- Ctrl + -: Hardlink yanked files

### Copy Paths
- cc: Copy absolute file path to clipboard
- cd: Copy current directory path to clipboard
- cf: Copy filename with extension to clipboard
- cn: Copy filename without extension to clipboard

### File Finding/Filtering
- f: Filter files
- /: Find next file
- ?: Find previous file
- n: Go to next found
- N: Go to previous found
- s: Search files by name (using fd)
- S: Search files by content (using ripgrep)
- Ctrl + s: Cancel ongoing search

### Sorting
- ,m: Sort by modified time
- ,M: Sort by modified time (reverse)
- ,b: Sort by birth time
- ,B: Sort by birth time (reverse)
- ,e: Sort by file extension
- ,E: Sort by file extension (reverse)
- ,a: Sort alphabetically
- ,A: Sort alphabetically (reverse)
- ,n: Sort naturally
- ,N: Sort naturally (reverse)
- ,s: Sort by size
- ,S: Sort by size (reverse)
- ,r: Sort randomly

### Tabs
- t: Create new tab with current directory
- 1-9: Switch to numbered tab
- [: Switch to previous tab
- ]: Switch to next tab
- {: Swap current tab with previous
- }: Swap current tab with next
- Ctrl + c: Close current tab

### Exit
- q: Quit (changes directory)
- Q: Quit (keeps directory)
- ~: Open help menu

## Kitty Terminal
### Mouse Actions
- Right Click: Extend selection (when not grabbed)
- Right Click: Paste from clipboard (when grabbed or ungrabbed)
- Copy on select is enabled

### Essential Controls
- Ctrl + Shift + C: Copy to clipboard
- Ctrl + Shift + V: Paste from clipboard
- Ctrl + Shift + S: Paste from selection
- Ctrl + Shift + O: Pass selection to program
- Ctrl + Shift + U: Unicode input
- Ctrl + Shift + E: Open URL in browser
- Ctrl + Shift + Delete: Reset terminal
- Ctrl + Shift + F2: Edit kitty.conf
- Ctrl + Shift + F5: Reload kitty.conf
- Ctrl + Shift + F6: Debug kitty.conf
- Ctrl + Shift + Escape: Open kitty shell

### Window Management
- Ctrl + Shift + Enter: New window
- Ctrl + Shift + N: New OS window
- Ctrl + Shift + W: Close window
- Ctrl + Shift + R: Resize window
- Ctrl + Shift + ]: Next window
- Ctrl + Shift + [: Previous window
- Ctrl + Shift + F: Move window forward
- Ctrl + Shift + B: Move window backward
- Ctrl + Shift + `: Move window to top
- Ctrl + Shift + F7: Visually focus window
- Ctrl + Shift + F8: Visually swap window
- Ctrl + Shift + 1-9: Focus specific window

### Tab Management
- Ctrl + Shift + T: New tab
- Ctrl + Shift + Q: Close tab
- Ctrl + Shift + Right: Next tab
- Ctrl + Shift + Left: Previous tab
- Ctrl + Shift + L: Next layout
- Ctrl + Shift + .: Move tab forward
- Ctrl + Shift + ,: Move tab backward
- Ctrl + Shift + Alt + T: Set tab title

### Scrolling
- Ctrl + Shift + Up: Line up
- Ctrl + Shift + Down: Line down
- Ctrl + Shift + Page_Up: Page up
- Ctrl + Shift + Page_Down: Page down
- Ctrl + Shift + Home: Go to top
- Ctrl + Shift + End: Go to bottom
- Ctrl + Shift + Z: Previous shell prompt
- Ctrl + Shift + X: Next shell prompt
- Ctrl + Shift + H: Browse scrollback in less
- Ctrl + Shift + G: Browse last cmd output

### Font Control
- Ctrl + Shift + Equal: Increase font size
- Ctrl + Shift + Minus: Decrease font size
- Ctrl + Shift + Backspace: Restore font size

### Window Display
- Ctrl + Shift + F11: Toggle fullscreen
- Ctrl + Shift + F10: Toggle maximized

### Background Opacity
- Ctrl + Shift + A > M: Increase opacity
- Ctrl + Shift + A > L: Decrease opacity
- Ctrl + Shift + A > 1: Full opacity
- Ctrl + Shift + A > D: Reset opacity

---
Note: This is a living document and will be updated as more keybindings are discovered or added to the system.
