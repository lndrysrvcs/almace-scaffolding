FROM node:current-bookworm

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

RUN apt update && apt install -y ruby ruby-dev

RUN wget -qO- https://get.pnpm.io/install.sh | ENV="$HOME/.bashrc" SHELL="$(which bash)" bash -

RUN pnpm install -g grunt-cli

RUN gem install bundler

COPY . /app

VOLUME /app

WORKDIR /app

RUN bundle install && pnpm install

EXPOSE 4321

ENTRYPOINT ["grunt"]

CMD [ "--help" ]
