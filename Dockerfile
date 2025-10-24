# Use the official pre-built n8n image
FROM n8nio/n8n:latest

# Set environment variables for Render
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production

# Expose port 10000 (Render's default)
EXPOSE 10000

# Start n8n
CMD ["n8n", "start"]
