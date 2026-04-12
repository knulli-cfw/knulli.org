It is recommended that you build KNULLI via Docker instead of using a direct build.  By using Docker, you significantly
reduce the number of differences between your system and the system that developers are building on which reduces issues
where the system builds fine for one person while failing for another.

## System requirements
- Linux Operating System capable of running docker
- More than 180 GB of available disk space

## Retro Achievements and Screen Scraper
This build does not include the required keys for both Screen Scraper and RetroAchievements.  The image will build 
succesfully without the key, but neither RetroAchievements or Screen Scraper will work without the keys.

RetroAchievements and Screen Scraper will work if you add your own keys prior to building.

## Step 1: Install Docker

| Docker Version | Instructions |
|-|-|
| Docker Engine Only (Does not include Docker Desktop) |[https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/) |
| Docker Desktop (Also includes Docker Engine) | [https://docs.docker.com/desktop/setup/install/linux/](https://docs.docker.com/desktop/setup/install/linux/) | 

## Step 2: Grab the latest source code
```
git clone https://github.com/knulli-cfw/knulli-linux knulli-linux
cd knulli-linux
git submodule init
git submodule update
```

## Step 3: Setup the docker container
This is not required on every build.  In fact, you can normally skip this step if you've done it already.

You may need to remove your existing docker container and re-do this step if you are switching between different
builds or if your are building the mainline and breaking changes have been made (e.g., a new app or library is
required).

```
make build-docker-image
```

## Step 4: Building the target

| Device                   | Build Target              |
|--------------------------|---------------------------|
| Anbernic RG35XX Original | ```  ``` |
| Anbernic RG35XX 2024     | ``` make h700-build ``` |
| Anbernic RG35XX Plus     | ``` make h700-build ``` |
| Anbernic RG35XX SP       | ``` make h700-build ``` |
| Anbernic RG35XX-H        | ``` make h700-build ``` |
| Anbernic RG35XX-V        | ``` make h700-build ``` |
| Anbernic RG-CubeXX   | ``` make h700-build ``` |
| Trim UI Brick            | ``` make a133-build ``` |
| Trim UI Smart Pro        | ``` make a133-build ``` |
