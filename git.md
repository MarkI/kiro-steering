---
title: Git Conventions
inclusion: always
---
# Git Conventions

## Commit Messages
Follow Conventional Commits:
- feat: New feature
- fix: Bug fix
- docs: Documentation changes
- refactor: Code restructuring
- test: Test additions/changes

Format: `type(scope): description`
Example: `feat(auth): add OAuth2 support`

## Branch Strategy
- `main` - production-ready
- `develop` - integration branch
- `feature/xxx` - new features
- `fix/xxx` - bug fixes