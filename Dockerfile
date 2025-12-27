# Build stage
FROM node:18-alpine AS builder

WORKDIR /app

# Fix OpenSSL issue with older webpack
ENV NODE_OPTIONS=--openssl-legacy-provider

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy source
COPY . .

# Build the React app
RUN npm run build

# Production stage
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev

# Copy built frontend
COPY --from=builder /app/build ./build

# Copy server files
COPY src/server ./src/server
COPY src/GameLogic ./src/GameLogic

# Create storage directory
RUN mkdir -p /app/storage/klaverjas

# Expose ports
EXPOSE 8000

# Start server
CMD ["node", "-r", "esm", "src/server/server.js"]
