FROM amazonlinux:2023

# dnfのアップデート
RUN dnf update -y

# Node.jsのインストール
RUN curl -sL https://rpm.nodesource.com/setup_20.x | bash - && \
    dnf install -y nodejs

# Viteのインストール
RUN npm install -g vite

# コンテナ内の作業ディレクトリを作成
WORKDIR /app

# プロジェクトのコピー
COPY vue-vite-sample/ ./

# ポート番号5173でコンテナを公開
EXPOSE 5173