# ================================
# Stage 1: builder
# ================================
FROM ruby:3.3-alpine AS builder

# ビルドに必要なパッケージをインストール
RUN apk add --no-cache \
    build-base \
    yaml-dev

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --without development test

COPY . .

# ================================
# Stage 2: runner
# ================================
FROM ruby:3.3-alpine AS runner

RUN apk add --no-cache tzdata

WORKDIR /app

# builderからgemとアプリだけコピー
COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY --from=builder /app .

ENV RAILS_ENV=production
ENV PORT=3000

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
