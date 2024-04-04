#!/bin/bash

# Website Status Monitor
# Monitors the availability and response time of specified websites.
#
# @author BASHCAVE
# @version 1.0.0
# @license MIT

websites=("http://example.com" "https://example.org" "https://example.net")
timeout=5 # Set a timeout for each ping in seconds
log_file="website_status.log"

check_website_status() {
    echo "Checking website status on $(date)" > "$log_file"
    for website in "${websites[@]}"; do
        response_time=$(curl -o /dev/null -s -w "%{time_total}\n" --connect-timeout $timeout $website)
        
        if [ $? -eq 0 ]; then
            echo "Website: $website is UP. Response Time: $response_time s" >> "$log_file"
        else
            echo "ALERT: $website is DOWN." >> "$log_file"
        fi
    done
    echo "Status check completed."
}

check_website_status

# Optionally, you can send the log file as an email or to another monitoring tool.
