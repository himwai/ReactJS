FROM node:18 as build
WORKDIR /app

RUN npm -g install npm

COPY package*.json .
RUN npm install 


ENTRYPOINT tail -f /dev/null

# FROM node:18-slim
# WORKDIR /app

# EXPOSE 5000  

# ARG webMain
# ARG webLogin
# ARG webServer

# COPY --from=build /home/Cityray-WebRoot/nodeApps/DEPLOY/$webServer ./server
# COPY ./config/settings/server.docker.settings.json ./server/settings/server.settings.json

# COPY --from=build /home/Cityray-WebRoot/nodeApps/DEPLOY/$webMain ./$webMain
# COPY ./config/settings/local-settings.js ./$webMain/resources/local-settings.js

# COPY --from=build /home/Cityray-WebRoot/nodeApps/DEPLOY/$webLogin/ ./$webLogin
# COPY ./config/settings/local-settings.js ./$webLogin/resources/local-settings.js

# ### the entrypoint must be pointing to fixed location
# ENTRYPOINT node ./server/index-bundle.js



  

