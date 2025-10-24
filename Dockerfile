# Use the official pre-built n8n image
FROM n8nio/n8n:latest

# Set environment variables for Render
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV N8N_ENCRYPTION_KEY=your-secret-encryption-key-here

# Expose port 10000 (Render's default)
EXPOSE 10000

# Start n8n using the full path and correct user
USER node
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n", "start"]
