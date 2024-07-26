#!/bin/bash

error_count=$(grep -i -c "ERROR" /home/ubuntu/application.log)

ALERT_MAIL="gokulraajjs@gmail.com"

if[ "$error_count" -gt 0]; then
             echo "Error detected in the log file, Total error: $error_count"

mailx -s "Log error detected in the log file" "$ALERT_MAIL"

fi
