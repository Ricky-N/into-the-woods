FROM chekote/gulp
ADD app/ /app
WORKDIR /app

# The engine & live socket connections are served out of the ige repo
# and the actual FE game assets are served out of base-game
RUN git clone https://github.com/irrelon/ige.git
RUN git clone https://github.com/Ricky-N/base-game.git

# Install engine dependencies
WORKDIR /app/ige/server
RUN npm install

# Install FE dependencies
WORKDIR /app/base-game
RUN npm install
RUN gulp build

EXPOSE 8000/tcp
EXPOSE 2000/tcp

CMD ["cd /app/base-game && gulp server"]
