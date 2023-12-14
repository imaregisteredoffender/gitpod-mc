echo made for gitpod by ariez 
sudo apt update
sudo apt-get install openjdk-8-jre -y
wget https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar
java -Xms16G -Xmx16G -jar server.jar nogui
echo goodbye
