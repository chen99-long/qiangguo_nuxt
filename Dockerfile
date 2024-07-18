
FROM node:18-bullseye-slim as base

ARG PORT=3000

# ENV NODE_ENV=production

WORKDIR /src

# Build
FROM base as build

# ENV GENERATE_SOURCEMAP=false
ENV NODE_OPTIONS=--max_old_space_size=4096

# COPY --link package.json pnpm-lock.yaml ./
COPY . .
RUN npm config set registry http://registry.npm.taobao.org/
RUN npm install -g pnpm
# COPY --link . .
RUN pnpm install

RUN pnpm run build
RUN pnpm prune

# Run
FROM base

ENV PORT=$PORT
EXPOSE $PORT

COPY --from=build /src/.output /src/.output
# Optional, only needed if you rely on unbundled dependencies
# COPY --from=build /src/node_modules /src/node_modules

CMD [ "node", ".output/server/index.mjs" ]