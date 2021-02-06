# NgrokCraft

NgrokCraft is a simple application for running a vanilla Java Minecraft server. It connects [Minecraft server](http://minecraft.com) and [Ngrok](http://ngrok.com)

Everything is set up for you already. Default server version is 1.14.3. [Latest official server release here](http://minecraft.net/download/server).

## Dependencies

To run this server, you will have to understand how it works, and what you need:

1. To remix the project
2. An [Ngrok](ngrok.com) account
3. To check Troubleshooting section of this README for help
4. and a computer lol

## Getting Started

### Console
First important step is to know how to access the Glitch Project Console. There are two ways of displaying it by clicking on Tools at the bottom left of your screen:

1. Tools > Logs > Console
2. Tools > Full Page Console
Both of these

### Setting up Ngrok
Go on your [Ngrok User Dashboard Auth section](https://dashboard.ngrok.com/auth) and copy the command including the *./*. Then go in your console and do:
```
cd ngrok
[PASTE YOUR COMMAND]

#Output
>> Authtoken saved to configuration file: /app/.ngrok2/ngrok.yml
```
### Initiating the server
#### Changing server version
Before initiating your server, you might want to change its version. First step is to copy the server executable file (ends in *.jar*). Then you can head onto your console, and type the following:
```
cd mc
wget -O server.jar [PASTE THE LINK]
```
When the download succeeds, you're ready to initate your server!
#### Actual initiating
Then head to *mc* directory and run `init.sh`:
```
cd ..
cd mc
./init.sh

#Output
>> You need to agree to the EULA in order to run the server. Go to eula.txt for more info.
```
And write `refresh`. Your *mc* folder should start to fill up. Click on `eula.txt` under `mc/` in the file tree to edit it. Make sure you have read Mojang's EULA and set `eula=false` to `eula=true` if you agree to them.
### Starting the server
You're now ready to start your server! You can enter `./start.sh` in your console to do so.
Things should appear in the console. Try copying the `Forwarding` before it goes away. If it does, go to Troubleshooting. It should look like this:
`tcp://0.tcp.ngrok.io:18050 -> localhost:80` Only keep this section: `0.tcp.ngrok.io:1805`. This is going to be your server ip.

When information about the server start to appear, you only have to wait until you receive this: 
```
>> [Server thread/INFO]: Done (49.467s)! For help, type "help"
```
That's when the server is ready for players to arrive!
### Stopping the server
To stop your server, do `ctrl+c` and write `./stop.sh` you should receive the following:
```
>> Server completely stopped.
```
And you're done!

P.S.: When running `./stop.sh` in your *mc* folder, the server should try to compile your world to `world_comp.zip`, to make you able to download it. To do so, head onto your project website: `[PROJECT_NAME].glitch.me` (ex: *ngrok-craft.glitch.me*) then click on the *mc* folder, and hit `world_comp.zip`. You can also get a direct download link at `[PROJECT_NAME].glitch.me/mc/world_comp.zip`.

You can then unzip the downloaded archive on your own computer and use it as your own world, or transfer it to another server!
## Troubleshooting

Wether your server won't start, or you have an Ngrok error, there's almost always an answer! Here are some things you might want to remember.

- Setting Ngrok auth key
- Accepting Minecraft EULA
- Deleting old Minecraft version before changing it
- Glitch storage might get full.
- You can't type in the console.

### I lost my server ip frick!!!
Head onto your [Ngrok account dashboard under status](https://dashboard.ngrok.com/status) and check your ip from there, and don't take "tcp://"!

### I can't op myself because I can't access the server console! oh no!
To access the server console, you will need to run the server locally on Glitch (without making any ip).
```
cd mc
./startlocal.sh
#wait for >> For help, type "help"
op [WHOEVER]
stop
```
### My server won't start, it's stuck!
First, check your Container Status, if your CPU is at 100%, it's normal that it can take a long time. Otherwise, try doing `ctrl+c` and running `./stop.sh`. Memory will always be fairly high, and Disk is your Glitch storage.
