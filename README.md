# Website Status Monitor Script

## Overview

The Website Status Monitor script is designed for system administrators and web developers to monitor the availability and response times of their websites. It provides an easy way to check if the websites are up and how long they take to respond, logging all the results for further analysis or notification.

## Features

- Monitors multiple websites for availability.
- Measures response time for each website.
- Logs the status and response time of each website.

## Prerequisites

- Bash shell
- `curl` command for making HTTP requests

## Usage

To set up and run the Website Status Monitor:

1. Open the script with a text editor and modify the `websites` array to include the URLs you want to monitor.

2. Make the script executable:

```bash
chmod +x website-status-monitor.sh
```

3. Execute the script:

```bash
./website-status-monitor.sh
```

4. Check the `website_status.log` file for the output of the website status checks.

## How It Works

- The script iterates over an array of website URLs, using `curl` to measure the response time of each site.
- It sets a connection timeout to avoid long waits for non-responsive sites.
- For each website, it logs whether the site is up or down and its response time to a log file.
- In case a website is down or the response time exceeds a certain threshold, it logs an alert.

## Expanding the Script

- Integrate with an email service to send real-time alerts when a website is down or responding slowly.
- Add functionality to check the HTTP status code returned by each website for more detailed monitoring.
- Set up a cron job to run this script at regular intervals, ensuring continuous monitoring.

This script is a foundational tool for anyone needing to keep an eye on website performance and availability.
