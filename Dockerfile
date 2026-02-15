# ZeroClaw Dockerfile
FROM agent0ai/agent-zero:latest

# Set branding
ENV ZC_BRAND_NAME=ZeroClaw

# Override port binding to work with Render
ENV WEB_UI_PORT=80
ENV WEB_UI_HOST=0.0.0.0
ENV WEB_HOST=0.0.0.0
ENV HOST=0.0.0.0

# Expose port
EXPOSE 80

# Replace the initialization script to force 0.0.0.0 binding
RUN sed -i 's/localhost/0.0.0.0/g' /exe/run_A0.sh || true

CMD ["/exe/run_A0.sh"]
