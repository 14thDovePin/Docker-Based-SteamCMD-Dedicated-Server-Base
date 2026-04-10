# DST Docker Server
A very simple Don't Starve Together server based on Docker.

### Environment Variables
- `shard` - Compatible string values:
  - `Master` - Specifies that the current container should host the Master part of the Cluster.
  - `Caves` - Specifies that the current container should host the Caves part of the Cluster.

### Docker Image Details
- This image is not distributed in any registry (yet).
- The image downloads the game's server files from steam at runtime.
- The compose file can be used as a template and is the recommended way of running the containers for both the Master & Caves shards of the same cluster (Cluster_1).

### DST Server Details
- Supports Caves.
- Raw server files straight from Klei's DST dedicated server app from steam.
- Manual configuration required before being able to play.
  - It is reccomended to create your own world (with or without caves) using DST's GUI through your own official copy of the game in steam and then move that save file into the `klei` folder generated at runtime by the containers. More information [here](https://dontstarve.fandom.com/wiki/Guides/Don%E2%80%99t_Starve_Together_Dedicated_Servers#Customizing_the_World_Map).

### Mod Management
- Recommended to be configured through `./server-files/mods/dedicated_server_mods_setup.lua`. More information [here](https://dontstarve.wiki.gg/wiki/Guides/Don%E2%80%99t_Starve_Together_Dedicated_Servers#Modding).

### Possible Future Updates
- More Environment Variables to support various properties & settings of DST.
- Support for more secondary shards.