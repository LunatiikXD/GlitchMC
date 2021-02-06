echo -e "\e[34mInitiating server...\e[0m"
echo -e "\e[93mMake sure you have set you Ngrok Auth Token. Ignore if done.\e[0m"
java -Xmx128M -Xms128M -jar server.jar nogui
