#!/bin/bash

# Define paths
REPO_DIR="$(pwd)"
CONFIG_DIR="$HOME/.config"
BACKUP_DIR="$REPO_DIR/dotfiles"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Function to create symbolic link
create_symlink() {
    local source="$1"
    local target="$2"
    
    if [ -L "$target" ]; then
        echo -e "${YELLOW}Link already exists: $target${NC}"
        return
    fi
    
    if [ -e "$target" ]; then
        echo -e "${YELLOW}Backing up existing file: $target${NC}"
        mv "$target" "$target.bak"
    fi
    
    ln -s "$source" "$target"
    echo -e "${GREEN}Created symlink: $target -> $source${NC}"
}

# Function to sync a config file or directory
sync_config() {
    local path="$1"
    local relative_path="${path#$CONFIG_DIR/}"
    local backup_path="$BACKUP_DIR/$relative_path"
    
    # Create parent directories if they don't exist
    mkdir -p "$(dirname "$backup_path")"
    
    # If path doesn't exist in backup yet, copy it
    if [ ! -e "$backup_path" ]; then
        cp -r "$path" "$backup_path"
        echo -e "${GREEN}Copied: $relative_path${NC}"
    fi
    
    # Create symbolic link back to .config
    create_symlink "$backup_path" "$path"
}

# List of configs to sync
configs=(
    "btop/btop.conf"
    "fuzzel/fuzzel.ini"
    "gtk-3.0/settings.ini"
    "gtk-4.0/settings.ini"
    "hypr/hyprland.conf"
    "hypr/hyprlock.conf"
    "hypr/hyprpaper.conf"
    "kitty/kitty.conf"
    "micro/bindings.json"
    "waybar/config"
    "waybar/frappe.css"
    "waybar/style.css"
    "wlogout/layout"
    "wlogout/style.css"
    "yazi/keymap.toml"
    "yazi/package.toml"
    "yazi/theme.toml"
    "yazi/yazi.toml"
    "pavucontrol.ini"
    "qt5ct/qt5ct.conf"
)

# Main execution
echo -e "${GREEN}Starting config sync...${NC}"

for config in "${configs[@]}"; do
    full_path="$CONFIG_DIR/$config"
    if [ -e "$full_path" ]; then
        sync_config "$full_path"
    else
        echo -e "${RED}Warning: $config does not exist${NC}"
    fi
done

echo -e "${GREEN}Config sync complete!${NC}"
