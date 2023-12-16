#!/bin/bash

# Prompt the user for the server.jar file name
read -p "Enter the name of your server.jar (Press Enter for default 'server.jar'): " server_jar

# Use the default value 'server.jar' if no input provided
server_jar=${server_jar:-server.jar}

# Run the server with the specified server.jar file
sudo java -Xms16G -Xmx16G -jar "$server_jar" nogui
