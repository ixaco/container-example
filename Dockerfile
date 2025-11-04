FROM node:24-alpine
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN corepack enable & corepack prepare pnpm@10 --activate
RUN pnpm install --frozen-lockfile
COPY . .
EXPOSE 3000
CMD [ "pnpm" , "start"]