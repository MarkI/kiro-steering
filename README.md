# Kiro Global Steering Files

This repository contains global steering files for Kiro. These files provide context, standards, and guidelines that are automatically included in Kiro's interactions to ensure consistent development practices across projects.

## What are Steering Files?

Steering files allow you to include additional context and instructions in your interactions with Kiro. They help maintain team standards, project conventions, and best practices without repeating yourself.

## Files in this Repository

- **accessibility.md** - Accessibility standards and guidelines
- **architecture.md** - Architecture patterns and principles
- **aws-cli.md** - AWS CLI usage and best practices
- **docs.md** - Documentation standards
- **git.md** - Git workflow and commit conventions
- **naming.md** - Naming conventions for code
- **react-patterns.md** - React patterns and best practices
- **security.md** - Security best practices
- **style.md** - Code style guidelines
- **testing.ms** - Testing standards and practices


These files are configured as global steering rules and will be included in Kiro's context to guide development across all your projects.

## Setup Script

Use the `setup-kiro.sh` script to automatically configure global steering files:

```bash
#!/bin/bash
# setup-kiro.sh

echo "Setting up AnyCompany Kiro Global Steering..."

# Clone company steering
git clone <URL to team global steering files here> ~/.kiro/company-steering

# Symlink to global steering (updates auto-sync)
ln -sf ~/.kiro/company-steering/* ~/.kiro/steering/

# if symlinks don't work the use hard links by running this command from the company-steering folder
for f in *.md; do [ "$f" != "README.md" ] && ln -f "$(pwd)/$f" ~/.kiro/steering/; done

echo "Global steering configured!"
```

for f in *.md; do [ "$f" != "README.md" ] && ln -f "$(pwd)/$f" ~/.kiro/steering/; done
