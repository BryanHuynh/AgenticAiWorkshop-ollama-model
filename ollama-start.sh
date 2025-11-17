#!/bin/bash

MODEL="llama3.1:8b" 

echo "Starting Ollama and Web UI..."
docker-compose up -d

echo "Waiting for Ollama to be ready..."
sleep 15

echo "Pulling model: $MODEL (this may take a few minutes)..."
docker exec ollama ollama pull $MODEL

echo ""
echo "Setup complete!"
echo ""
echo "Services available at:"
echo "   - Ollama API:  http://localhost:11434"
echo "   - Web UI:      http://localhost:3000"
echo ""
echo "Test commands:"
echo "   curl http://localhost:11434/api/tags"
echo "   docker exec -it ollama ollama list"
echo ""
echo "Open http://localhost:3000 in your browser to chat with the model"
echo ""
echo "Stop with: docker-compose down"