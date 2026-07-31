FROM node:24

WORKDIR /app

# Install dependencies first for better Docker layer caching.
COPY package*.json ./
RUN npm i

# Copy the app source and local files into the image.
COPY . .

CMD ["node", "src/index.js"]
