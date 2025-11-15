#!/bin/bash

# This script is designed for Arch Linux (systemd), Void Linux (glibc runit), and Debian-based distros with systemd.
# Script created by Nicklas Rudolfsson https://github.com/nirucon

# Function to show a notification
show_notification() {
    local message="$1"
    notify-send "Powermenu" "$message" -t 3000
}

# Function to prompt user for confirmation
confirm_action() {
    local action="$1"
    local message="$2"
    local confirmation

    while true; do
        confirmation=$(echo -e "Yes\nNo" | fuzzel --dmenu -p "$message")
        case "$confirmation" in
            Yes)
                show_notification "$action"
                return 0
                ;;
            No)
                return 1
                ;;
            *)
                return 1
                ;;
        esac
    done
}

# Function to execute the chosen action with confirmation
execute_action() {
    local action_message="$1"
    local command="$2"

    if confirm_action "$action_message" "Are you sure you want to $action_message"; then
        show_notification "$action_message"
        sleep 3
        eval "$command"
        exit 0
    fi
}

# Function to determine init system (systemd or runit)
detect_init_system() {
    if command -v systemctl &> /dev/null; then
        INIT_SYSTEM="systemd"
    elif command -v sv &> /dev/null; then
        INIT_SYSTEM="runit"
    else
        show_notification "Unsupported init system"
        exit 1
    fi
}

# Main menu function
main_menu() {
    while true; do
        ACTION=$(echo -e "Suspend\nLog out\nReboot\nShutdown\nExit script" | fuzzel --dmenu -p "power: ")

        case "$ACTION" in
            Suspend)
                if [ "$INIT_SYSTEM" = "systemd" ]; then
                    execute_action "suspend the system!" "systemctl suspend"
                elif [ "$INIT_SYSTEM" = "runit" ]; then
                    execute_action "suspend the system!" "loginctl suspend"
                fi
                ;;
            Log\ out)
                if [ "$INIT_SYSTEM" = "systemd" ]; then
                    execute_action "log out!" "loginctl terminate-session $(loginctl session-status | head -n 1 | awk '{print $1}')"
                elif [ "$INIT_SYSTEM" = "runit" ]; then
                    execute_action "log out!" "pkill -KILL -u $USER"
                fi
                ;;
            Reboot)
                if [ "$INIT_SYSTEM" = "systemd" ]; then
                    execute_action "reboot the system!" "systemctl reboot"
                elif [ "$INIT_SYSTEM" = "runit" ]; then
                    execute_action "reboot the system!" "sudo reboot"
                fi
                ;;
            Shutdown)
                if [ "$INIT_SYSTEM" = "systemd" ]; then
                    execute_action "shut down the system!" "systemctl poweroff"
                elif [ "$INIT_SYSTEM" = "runit" ]; then
                    execute_action "shut down the system!" "sudo poweroff"
                fi
                ;;
            Exit\ script)
                exit 0
                ;;
            *)
                show_notification "Invalid selection. Please try again."
                exit 0
                ;;
        esac
    done
}

# Execute the functions
detect_init_system
main_menu
