---
title: Base Security Standards
inclusion: always
---
# security.md

## Security Essentials
- Never commit secrets (use environment variables)
- Validate all user inputs
- Sanitize data before SQL/HTML rendering
- Use parameterized queries, never string concatenation
- Implement rate limiting on APIs
- HTTPS only, no mixed content