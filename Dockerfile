FROM node:18

RUN apt-get update && apt-get install -y yt-dlp

WORKDIR /app
COPY . .
RUN npm install

EXPOSE 5000
CMD ["npm", "start"]
