#!/bin/bash

echo "Made for Gitpod by Ariez"

# Select Java version
echo "Select Java version:"
echo "1. OpenJDK 8"
echo "2. OpenJDK 11"
echo "3. OpenJDK 16"

read -p "Enter the number corresponding to your choice: " java_version

case $java_version in
  1)
    sudo apt-get install openjdk-8-jre -y
    ;;
  2)
    sudo apt-get install openjdk-11-jre -y
    ;;
  3)
    sudo apt-get install openjdk-16-jre -y
    ;;
  *)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
esac

# Enter the link for server.jar
read -p "Enter the link for server.jar: " server_jar_link

# Download server.jar
wget $server_jar_link -O server.jar

# Install playit
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
sudo apt update
sudo apt install playit -y

echo "Run the server with server.sh and run playit with /bin/playit"
