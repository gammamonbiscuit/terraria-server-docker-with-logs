# Terraria Vanilla Server (With Logs)
Just a little "mod" that is built on top of [hexlo/terraria-server-docker](https://github.com/hexlo/terraria-server-docker/), so that it can output its log to a file.

>[!WARNING]
>No docker image is available for download, you have to build it yourself,
>this is more or less a proof of concept and should not be used in production.
>**No support will be provided!**

# Usage
The built image is a drop-in replacement, so just use the instructions from [hexlo/terraria-server-docker](https://github.com/hexlo/terraria-server-docker/).

# Things added in this mod
**Environment variable `$log`**
Set it to `true` or `1` to enable logging to file.

**Container directory `/root/.local/share/Terraria/Logs`**
You can mount this from multiple containers together like the `Worlds` directory, as long as all the worlds have different names.