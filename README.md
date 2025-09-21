# lognseth.de

A simple "coming soon" landing page with a humorous twist, deployed on Cloudflare Workers.

## Live Site

🌐 **https://lognseth.de**

## Features

- Animated gradient background with floating stars
- Smooth fade-in animations
- Animated progress bar
- Rotating status messages
- Responsive design
- Deployed on Cloudflare's global edge network

## Development

### Prerequisites

- Node.js (set via asdf: `asdf set nodejs 24.6.0`)
- Cloudflare account

### Quick Start

```bash
# Deploy to production
make deploy

# Start local development server
make dev

# Login to Cloudflare (one-time setup)
make login
```

### Available Commands

```bash
make help      # Show all available commands
make deploy    # Deploy to production
make dev       # Start local development server
make preview   # Deploy to preview environment
make login     # Login to Cloudflare
make logout    # Logout from Cloudflare
make status    # Check deployment status
make clean     # Clean temporary files
```

## Project Structure

```
.
├── src/
│   └── worker.js       # Cloudflare Worker script
├── index.html          # Original HTML (for reference)
├── wrangler.toml       # Cloudflare Workers configuration
├── Makefile           # Build and deployment commands
└── README.md          # This file
```

## Deployment

The site is automatically deployed to `lognseth.de` via Cloudflare Workers when you run `make deploy`.

### DNS Configuration

The domain is configured with:

- **Type**: A record
- **Name**: @ (root domain)
- **Value**: 192.0.2.1 (dummy IP)
- **Proxy Status**: ☁️ Proxied (Orange cloud)

## Technologies

- **Frontend**: Pure HTML, CSS, JavaScript
- **Hosting**: Cloudflare Workers
- **Deployment**: Wrangler CLI
- **Build**: Make

## Contributing

This is a personal website, but feel free to fork it and use it as inspiration for your own landing page!

If you find bugs or have suggestions, please open an issue.

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Acknowledgments

- Built with [Cloudflare Workers](https://workers.cloudflare.com/)
- Deployed using [Wrangler CLI](https://developers.cloudflare.com/workers/wrangler/)
- Inspired by the art of productive procrastination
