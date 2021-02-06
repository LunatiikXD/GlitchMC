killall java
echo -e "\e[33mServer completely stopped.\e[0m"
echo "Compiling world..."
zip -r -X world_comp.zip world
echo "World compiled. Check README.md under \"Stopping server\" for more info..."
