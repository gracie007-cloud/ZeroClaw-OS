# Deploy to Render (Free Tier)

## Option 1: One-Click Deploy (Recommended)

1. Click this button:
   [![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/blueshirtprogrammer/zeroclaw)

2. Or go manually:
   - Sign in to https://render.com
   - Click "New" → "Web Service"
   - Connect your GitHub: `blueshirtprogrammer/zeroclaw`
   - Settings:
     - Build Command: (leave empty - we're using pre-built image)
     - Start Command: `docker run -p $PORT:80 agent0ai/agent-zero:latest`
   - Add environment variables in the dashboard:
     - `ZC_BRAND_NAME` = `ZeroClaw`
     - `OPENAI_API_KEY` = your key
     - `ANTHROPIC_API_KEY` = your key

3. Click "Create Web Service"

---

## Option 2: Using Docker Image Directly

Create a new Web Service on Render:

| Setting | Value |
|---------|-------|
| Name | `zeroclaw` |
| Region | `Oregon` (or closest to you) |
| Environment | `Docker` |
| Docker Image | `agent0ai/agent-zero:latest` |
| Plan | `Free` |

Add environment variables:
- `ZC_BRAND_NAME`: `ZeroClaw`
- `ZC_INACTIVITY_TIMEOUT`: `3600`

---

## Environment Variables

Add these in Render dashboard (Environment tab):

```
OPENAI_API_KEY=sk-...          # Required for OpenAI
ANTHROPIC_API_KEY=sk-ant-...   # For Claude
GROQ_API_KEY=...               # Optional
```

---

## Access Your Deployment

After deploy, you'll get a URL like:
`https://zeroclaw.onrender.com`

---

## Troubleshooting

**Container keeps restarting?**
- Check logs in Render dashboard
- Missing API keys

**Slow cold start?**
- Free tier sleeps after 15min - normal
- First request takes ~30 seconds

**Want custom domain?**
- Need Render paid tier ($7/mo)
- Or use Cloudflare tunnel from home

---

## Credits

- **Founder & Lead:** Joshua Goodlock
- **Original Team:** 35+ Contributors  
- **Strategic Alliance:** Link Technologies AI OS + CLAW + Agent Zero
