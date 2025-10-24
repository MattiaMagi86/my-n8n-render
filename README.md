# n8n on Render.com

This repository contains a simple configuration to deploy n8n on Render.com's free tier using the official pre-built Docker image.

## Quick Deploy Steps

1. **Create a new GitHub repository** with these files
2. **Go to Render.com** and sign up with GitHub  
3. **Create New Web Service** and connect this repository
4. **Choose "Docker" as environment**
5. **Render will build and deploy** automatically

## Important Notes

- **Free tier limitations**: 512MB RAM, sleeps after 15min inactivity
- **First startup**: May take 2-3 minutes
- **Data persistence**: Limited on free tier
- **Custom domain**: Available on paid plans

## Environment Variables

These are automatically set via render.yaml:
- `N8N_HOST=0.0.0.0`
- `N8N_PORT=10000`
- `N8N_PROTOCOL=https`
- `NODE_ENV=production`

## Migrating Existing Workflows

If you have existing n8n workflows:

1. **Export workflows** from your local n8n:
   - Settings → Import/Export → Export workflows
   
2. **Import to Render deployment**:
   - Access your new n8n URL
   - Settings → Import/Export → Import workflows

## Troubleshooting

- **Service sleeps**: Free tier sleeps after 15min inactivity
- **Memory issues**: Upgrade to paid tier for more RAM
- **Startup time**: First boot can be slow

## Upgrade Options

For production use, consider Render's paid plans:
- **Starter**: $7/month - 512MB RAM, no sleep
- **Standard**: $25/month - 2GB RAM, better performance
