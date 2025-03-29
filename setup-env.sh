#!/bin/bash
set -e

# .envファイルが存在するか確認
if [ ! -f .env ]; then
  echo "Creating .env file from template..."
  cp .env.template .env
  echo ".env file created. Please edit it to add your TickTick API credentials."
  echo "You can get these from https://developer.ticktick.com"
else
  echo ".env file already exists."
fi

echo ""
echo "To authenticate with TickTick, you'll need to:"
echo "1. Edit the .env file with your TICKTICK_CLIENT_ID and TICKTICK_CLIENT_SECRET"
echo "2. Run the auth service: docker-compose run --service-ports ticktick-auth"
echo "3. Follow the prompts to complete authentication in your browser"
echo ""
echo "After authentication is complete, you can run the MCP server with:"
echo "docker-compose up ticktick-mcp" 
