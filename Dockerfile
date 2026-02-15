# ZeroClaw - Simplified Dockerfile for Render
FROM agent0ai/agent-zero:latest

# Force the web UI to bind to all interfaces
ENV WEB_UI_HOST=0.0.0.0
ENV WEB_HOST=0.0.0.0
ENV HOST=0.0.0.0
ENV ZC_BRAND_NAME=ZeroClaw

# Patch the run_ui.py to ensure it binds to 0.0.0.0
RUN sed -i 's/host =.*/host = "0.0.0.0"/g' /a0/python/helpers/runtime.py 2>/dev/null || true

# Override the CMD to run web only on port 80
EXPOSE 80

# Run only the web UI, not the full supervisor stack
CMD ["bash", "-c", "cd /a0 && python3 run_ui.py"]
