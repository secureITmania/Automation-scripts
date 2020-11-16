#!/bin/bash
message="$@"

if [[ "$message" == "" ]]; then
  echo "Make sure you replace your discord webhook URL at line 17"
	echo "script usage:command excute;discord-notify <YOUR NOTIFICATION MESSAGE"
	echo "Example: nmap -sC -sV <IP>;discord-notify nmap scan completed"
	exit 3
fi
body=$(cat << EOF
{ "username" :"reconbot",
  "content" :"$message"
}
EOF
)
echo $body
curl -X POST -H "Content-Type: application/json" -d "$body" https://discord.com/api/webhooks/7XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXe2
