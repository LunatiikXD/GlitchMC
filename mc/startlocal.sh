echo -e "\e[34mStarting local server...\e[0m"
echo -e "\e[93mIf the CPU goes up to 100%, you can expect waiting several minutes.\e[0m"
java -Xmx256M -Xms256M -jar server.jar nogui
