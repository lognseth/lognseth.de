.PHONY: help deploy dev preview login logout clean

help:
	@echo "Available commands:"
	@echo "  deploy    - Deploy to Cloudflare Workers"
	@echo "  dev       - Start local development server"
	@echo "  preview   - Deploy to preview environment"
	@echo "  login     - Login to Cloudflare"
	@echo "  logout    - Logout from Cloudflare"
	@echo "  clean     - Clean temporary files"

deploy:
	@echo "Deploying to Cloudflare Workers..."
	npx wrangler deploy

dev:
	@echo "Starting local development server..."
	npx wrangler dev

preview:
	@echo "Deploying to preview environment..."
	npx wrangler deploy --env preview

login:
	@echo "Logging into Cloudflare..."
	npx wrangler login

logout:
	@echo "Logging out from Cloudflare..."
	npx wrangler logout

clean:
	@echo "Cleaning temporary files..."
	rm -rf node_modules/.cache
	rm -rf .wrangler

status:
	@echo "Checking deployment status..."
	npx wrangler deployments list
