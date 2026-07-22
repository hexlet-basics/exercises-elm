FROM hexletbasics/base-image:latest

RUN npm install -g elm@0.19.1-6

WORKDIR /exercises-elm

COPY . .

ENV PATH=/exercises-elm/bin:$PATH

# Warm up the Elm package cache so tests need no network
RUN cd modules/10-basics/10-hello-world && elm make Main.elm --output=/dev/null
