FROM ruby:2.7.6-slim

WORKDIR /usr/src/app

# Instalar dependências do sistema
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    libsqlite3-dev \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Instalar bundler compatível
RUN gem install bundler -v 2.4.22

# Copiar Gemfile e Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Instalar gems
RUN bundler _2.4.22_ install --verbose

# Copiar app
COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
