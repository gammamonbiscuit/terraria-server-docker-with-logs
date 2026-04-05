# Terraria Vanilla Server (With Logs)
Just a little "mod" that is built on top of [hexlo's image](https://github.com/hexlo/terraria-server-docker/), so that it can output its log to a file.

>[!WARNING]
>No docker image is available for download, you have to build it yourself,
>this is more or less a proof of concept and should not be used in production,
>**DO NOT MOUNT THE `Logs` DIRECTORY FROM MULTIPLE CONTAINERS TOGETHER, THIS SCRIPT DOES NOT HANDLE THAT.**
>**No support will be provided!**

# Usage
The built image is a drop-in replacement, so just use the instructions from [hexlo/terraria-server-docker](https://github.com/hexlo/terraria-server-docker/), and mount container directory `/root/.local/share/Terraria/Logs` to host.