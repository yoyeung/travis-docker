FROM node:7


WORKDIR /opt/app-root/src
ADD . /opt/app-root/src
RUN chmod -R 775 /opt/app-root/src
RUN npm install

EXPOSE 3000

CMD ["npm", "run", "start"]
