# Use official Node.js image
FROM node:18-alpine

# Set working directory#
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm ci

# Copy all source code
COPY . .

# Build the Next.js app
RUN npm run build

# Set environment
ENV NODE_ENV=production

# Expose the port Next.js runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
