FROM mhart/alpine-node:8.10

ENV PATH /root/.yarn/bin:$PATH

RUN apk update \
  && apk add git curl bash binutils tar rsync \
  && rm -rf /var/cache/apk/* \
  && /bin/bash \
  && touch ~/.bashrc \
  && curl -o- -L https://yarnpkg.com/install.sh | bash \
  && apk del curl tar binutils

RUN rsync --version
RUN node -v
RUN npm -v
RUN yarn -v
