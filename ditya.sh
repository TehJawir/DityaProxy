RED="\e[1;31m"
GREEN="\e[1;32m"
ENDCOLOR="\e[0m"

clear
echo -e "${GREEN}Installing Proxy...${ENDCOLOR}"
sleep 1
if [ -f "ditya" ]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm ditya
    sleep 1
    echo -e "${GREEN}Updating proxy...${ENDCOLOR}"
fi
echo -e "${GREEN}Checking Termux Installer..."
pkg update
pkg upgrade
pkg install openssl
pkg install curl
pkg install libenet
pkg install wget
clear
wget -q https://github.com/TehJawir/DityaProxy/raw/main/ditya
sleep 1
echo -e "${GREEN}Proxy Installed${ENDCOLOR}"
echo -e "${GREEN}Execute proxy with this command: ./ditya${ENDCOLOR}"
chmod +x ditya
