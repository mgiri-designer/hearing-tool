#!/bin/bash
set -e

GITHUB_USER="mgiri-designe"
REPO_NAME="hearing-tool"
DEPLOY_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== サイト制作ヒアリングシート デプロイセットアップ ==="
echo ""

# git init & commit
cd "$DEPLOY_DIR"
git init
git config user.email "mkatagiri@bukkenking.com"
git config user.name "Maiko Katagiri"
git add -A
git commit -m "initial commit: サイト制作ヒアリングシート v1.3"
git branch -M main

echo ""
echo "✅ Gitリポジトリを初期化しました"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "次のステップ："
echo ""
echo "① GitHubでリポジトリを作成してください："
echo "   https://github.com/new"
echo "   - Repository name: $REPO_NAME"
echo "   - Public または Private"
echo "   - README等は追加しない（空のままでOK）"
echo ""
echo "② 作成後、以下を実行してください："
echo "   git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git"
echo "   git push -u origin main"
echo ""
echo "③ Railwayでデプロイ："
echo "   npm install -g @railway/cli"
echo "   railway login"
echo "   railway init"
echo "   railway up"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
