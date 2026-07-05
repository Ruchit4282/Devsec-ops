# Use Node.js LTS image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source
COPY . .

# Expose React development server port
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]