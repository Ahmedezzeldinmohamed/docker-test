#Base image
FROM node:18

#Set Working Dic
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./

Run npm install

# Copy the rest of the app
COPY . .

# Expose the app port
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
