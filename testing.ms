# Testing Standards (All Languages)

## Coverage
- Minimum 80% coverage for business logic
- 100% coverage for payment/security code

## Test Structure
- Arrange-Act-Assert pattern
- Descriptive test names (it should...)
- One assertion per test when possible

## Testing Standards
- Mock external dependencies
- Integration tests for critical paths

## Language-Specific
### TypeScript/JavaScript
- Jest + Testing Library (e.g. Use Jest + React Testing Library)
- Tests in `__tests__/` directories

### Python
- pytest
- Tests in `tests/` directory
- Use fixtures for setup

### Go
- Standard `testing` package
- Table-driven tests
- `_test.go` suffix

## Testing Strategy

### Test-Driven Development (TDD) Approach

- **Write tests alongside implementation**, not after
- **Tests define the contract** and expected behavior
- **Implementation satisfies the tests**, ensuring requirements are met
- **Refactor with confidence** knowing tests catch regressions

### Testing Pyramid

```
    /\
   /  \    E2E Tests (Few)
  /____\   - Critical user journeys
 /      \  - End-to-end workflows
/________\ Integration Tests (Some)
          - API endpoints with real requests
          - Database operations
          - Service interactions
          
          Unit Tests (Many)
          - Business logic
          - Utilities and helpers
          - Individual functions
```
