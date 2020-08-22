## Into The Woods
In 2015 I built a multiplayer game that I called [Into The Woods](https://github.com/Ricky-N/base-game) over a Christmas break that I thought was pretty fun. I had some mystery deployment process that landed it on Azure when I wanted to update it and I played it with some friends.

I wanted to revisit the game, but I honestly couldn't figure out how to deploy the thing again -- I had only documented developer mode. This project is based on my updated deployability strategy -- build things up into a Docker container that I publish to my personal artifact repository, and deploy it onto my Docker Swarm.

# Build
make build