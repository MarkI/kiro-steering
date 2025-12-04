---
title: Documentation Standards
inclusion: always
---
# docs.md

## Code Documentation
- JSDoc for all public functions
- Inline comments for complex logic only
- README for every project with setup instructions
- API documentation using OpenAPI/Swagger
- Changelog following Keep a Changelog format

## 📝 Documentation Standards

### Required Files

#### Every Package Must Have:
- **README.md** - Package overview, quick start, key concepts
- **SETUP.md** - Detailed setup instructions with troubleshooting

### File Naming Conventions

- Use **UPPERCASE.md** for major documentation files
- Use **lowercase.md** for supporting documentation
- Use **kebab-case** for multi-word files: `api-reference.md`
- Use descriptive names: `SETUP.md` not `setup.md`

## ✍️ Writing Standards

### Document Structure

Every documentation file should follow this structure:

```markdown
# Title

Brief description of what this document covers.

## Prerequisites (if applicable)

List of requirements before following this guide.

## Main Content

Organized in logical sections with clear headings.

### Subsections

Use consistent heading hierarchy.

## Troubleshooting (if applicable)

Common issues and solutions.

## Next Steps (if applicable)

What to do after completing this guide.
```

### Writing Style

- **Be concise**: Get to the point quickly
- **Use active voice**: "Run the command" not "The command should be run"
- **Include examples**: Show, don't just tell
- **Use consistent terminology**: Maintain a glossary of terms
- **Write for your audience**: Adjust complexity based on intended readers

### Code Examples

- Always include complete, runnable examples
- Use syntax highlighting with language specification
- Include expected output when helpful
- Provide context for code snippets

```bash
# Good: Complete command with context
npm run build
# Expected output: Build completed successfully in 1.52s

# Bad: Incomplete or unclear
npm build
```

### Links and References

- Use **relative links** for internal documentation
- Use **descriptive link text**: `[Setup Guide](./SETUP.md)` not `[here](./SETUP.md)`
- Verify all links work and update when files move
- Include links to external resources when helpful

## 🎯 Audience-Specific Guidelines

### For Developers
- Include code examples and technical details
- Provide troubleshooting sections
- Link to related technical documentation
- Use technical terminology appropriately

### For DevOps/Infrastructure
- Focus on deployment and operational concerns
- Include monitoring and troubleshooting guides
- Provide complete configuration examples
- Document security considerations

## 🛠️ Tools and Automation

### Required Tools

- **Markdown linter** - Ensure consistent formatting
- **Link checker** - Verify all links work
- **Spell checker** - Catch typos and errors

### Recommended Tools

- **Documentation generator** - Auto-generate API docs from code
- **Screenshot tools** - For UI documentation
- **Diagram tools** - Mermaid for architecture diagrams

### Automation

- **CI/CD checks** - Lint documentation in pull requests
- **Link validation** - Check for broken links automatically
- **Documentation coverage** - Track documentation completeness

## 🔄 Maintenance Standards

### When to Update Documentation

- **Always** when adding new features
- **Always** when changing APIs or interfaces
- **Always** when modifying setup procedures
- **Regularly** review for accuracy (quarterly)
- **Immediately** when receiving feedback about outdated info

### Documentation Review Process

1. **Author** creates/updates documentation
2. **Reviewer** checks for accuracy and clarity
3. **Test** instructions on clean environment
4. **Approve** and merge with code changes

### Version Control

- Keep documentation in same repository as code
- Include documentation changes in pull requests
- Use conventional commits for documentation updates:
  - `docs: add API documentation for user endpoints`
  - `docs: update setup guide for new dependencies`

## 📊 Quality Metrics

### Success Criteria

- **Setup success rate**: >95% of new developers can set up successfully
- **Time to first contribution**: <30 minutes from clone to running
- **Documentation freshness**: Updated within 30 days of code changes
- **Link health**: <1% broken links across all documentation

### Regular Reviews

- **Monthly**: Check for broken links and outdated screenshots
- **Quarterly**: Review all setup guides with fresh environment
- **Annually**: Complete documentation audit and restructure if needed

## 🚨 Common Pitfalls to Avoid

### Content Issues
- ❌ Assuming prior knowledge without stating prerequisites
- ❌ Using outdated screenshots or examples
- ❌ Providing incomplete code examples
- ❌ Not testing instructions on clean environment

### Structure Issues
- ❌ Inconsistent file naming across packages
- ❌ Missing cross-references between related docs
- ❌ Burying important information in long documents
- ❌ Not organizing by audience needs

### Maintenance Issues
- ❌ Updating code without updating documentation
- ❌ Not removing outdated documentation
- ❌ Ignoring user feedback about documentation
- ❌ Not having clear ownership of documentation sections

## 🎉 Best Practices

### Content Creation
- ✅ Start with user needs and work backwards
- ✅ Test all instructions on clean environment
- ✅ Include both happy path and error scenarios
- ✅ Use consistent terminology throughout

### Organization
- ✅ Follow the three-tier architecture
- ✅ Use clear, descriptive headings
- ✅ Provide multiple entry points (index, search, navigation)
- ✅ Cross-reference related documentation

### Maintenance
- ✅ Treat documentation as code
- ✅ Review documentation in pull requests
- ✅ Set up automated checks where possible
- ✅ Regularly gather and act on user feedback
