sudo apt-get install openjdk-8-jre
wget https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar
java -Xms16G -Xmx16G -jar server.jar nogui
echo Crash detected. If you did a exit on the server you can ignore this message.
