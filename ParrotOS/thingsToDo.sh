echo "Updating and Upgrading"
sudo apt-get update && sudo parrot-upgrade && sudo apt-get -y upgrade
sudo apt-get update
#install gedit
echo "installing gedit"
sudo apt-get install gedit
#install brave-browser https://brave.com/linux/
echo "installing brave-browser"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo apt install brave-browser
#install tcpdump & scapy with all main dependencies
sudo apt-get install tcpdump && sudo pip install --pre scapy[complete]
sudo apt -y autoremove
sudo apt autoclean
