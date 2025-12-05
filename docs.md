---
title: Documentation Standards
inclusion: always
---

# Documentation Standards

## Code Documentation
- JSDoc for all public functions
- Inline comments for complex logic only
- README + SETUP.md for every project
- API docs using OpenAPI/Swagger
- Changelog following Keep a Changelog format

## File Conventions
- **UPPERCASE.md** for major docs (README, SETUP, CHANGELOG)
- **kebab-case.md** for supporting docs
- Co-locate docs with code in same repository

## Document Structure
```markdown
# Title
Brief description.

## Prerequisites
Requirements before following this guide.

## Main Content
Logical sections with clear headings.

## Troubleshooting
Common issues and solutions.

## Next Steps
What to do after completing this guide.
```

## Writing Style
- Be concise, use active voice
- Include complete, runnable code examples with expected output
- Use relative links with descriptive text: `[Setup Guide](./SETUP.md)`
- Test all instructions on clean environment

## Tools
| Required | Recommended |
|----------|-------------|
| Markdown linter | Documentation generator |
| Link checker | Mermaid for diagrams |
| Spell checker | Screenshot tools |

## Maintenance
- Update docs with every code change (features, APIs, setup)
- Include doc changes in PRs with conventional commits: `docs: description`
- Review process: Author → Reviewer → Test on clean env → Merge
- Regular reviews: Monthly (links), Quarterly (guides), Annually (full audit)

## Quality Metrics
- Setup success rate: >95%
- Time to first contribution: <30 min
- Documentation freshness: <30 days from code changes
- Link health: <1% broken

## Do's and Don'ts

✅ Test instructions on clean environment
✅ Include happy path and error scenarios
✅ Cross-reference related documentation
✅ Treat documentation as code

❌ Assume prior knowledge without stating prerequisites
❌ Provide incomplete code examples
❌ Update code without updating documentation
❌ Bury important information in long documents
