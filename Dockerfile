# Stage 1: Build stage
FROM public.ecr.aws/docker/library/node:20-alpine AS build

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files and build the application
COPY . .
RUN npm run build

# Stage 2: Serve stage
FROM public.ecr.aws/nginx/nginx:stable-alpine

# Copy the build output (dist folder for Vite) to nginx directory
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]