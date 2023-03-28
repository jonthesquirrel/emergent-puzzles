# Datapack Template

## Setup

- Create a new GitHub repository with the "Use this template" button
- Clone the repository into your minecraft world's `datapacks` folder
- Open the folder in Visual Studio Code and install the recommended extensions
- Rename the `yourname` folder to your datapack's name, and change the description in `pack.mcmeta` to your datapack's description
- Enable the datapack in Minecraft by running `/datapack enable "file/yourname"` (replace `yourname` with your datapack's name)
- Run `/function yourname:helloworld` to test if it's working

## Editing

- Change or add `.mcfunction` files (see the [Function documentation](<https://minecraft.fandom.com/wiki/Function_(Java_Edition)>))
- Run `/reload` in Minecraft to reload the datapack after making changes
