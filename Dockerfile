FROM python:3.10-slim

WORKDIR /app

# 必要なパッケージをインストール
RUN pip install --no-cache-dir uv

# アプリケーションファイルをコピー
COPY . /app/

# パッケージをインストール（--system フラグを追加して仮想環境なしでインストール）
RUN uv pip install --system -e .

# 環境変数の設定
ENV PYTHONUNBUFFERED=1

# エントリーポイント
ENTRYPOINT ["python", "-m", "ticktick_mcp.cli"]
CMD ["run"] 
