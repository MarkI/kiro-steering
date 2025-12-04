---
title: Baseline Testing Standards
inclusion: always
---

# Baseline Testing Standards (All Languages)

## Core Testing Philosophy

**Quality is built in from the start, with each task including both implementation and testing as a complete deliverable.**

Testing is not a separate phase or optional activity—it is an integral part of development that ensures reliability, maintainability, and confidence in our codebase. Every feature, service, and component must include comprehensive tests as part of its definition of done.


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

## Testing Standards

### Coverage
- **Minimum 80% code coverage** for all business logic
- **100% coverage for critical paths** (authentication, authorization, data integrity, payment/security code)
- **All error paths must be tested**
- **All business rules must have corresponding tests**
- Integration tests for critical paths

### Test Structure
- **One test file per source file**: `user-service.test.ts` for `user-service.ts`
- **Descriptive test names**: Use "should [expected behavior] when [condition]"
- **Arrange-Act-Assert pattern**: Clear separation of test phases
- **Grouped by method**: Use nested `describe` blocks for each method
- One assertion per test when possible

### Mock Strategy

- **Mock external dependencies**: Databases, APIs, file systems
- **Use dependency injection**: Make mocking easier
- **Mock at service boundaries**: Don't mock internal implementation details
- **Verify mock interactions**: Ensure dependencies are called correctly

```typescript
// Good: Mock at service boundary
const mockUserRepository = {
  findByEmail: jest.fn(),
  create: jest.fn(),
} as jest.Mocked<IUserRepository>;

// Bad: Mock internal implementation
jest.mock('./database-connection');
```

### Test Data Management

- **Use factories for test data**: Create reusable test data builders
- **Avoid hardcoded values**: Use meaningful test data
- **Clean up after tests**: Ensure tests don't affect each other
- **Use realistic data**: Test with data similar to production

```typescript
// Test data factory
const createTestUser = (overrides = {}) => ({
  userId: 1,
  email: 'test@example.com',
  forename: 'Test',
  lastName: 'User',
  ...overrides,
});
```

## Testing Best Practices

### Do's

✅ **Write tests first or alongside implementation**
✅ **Test behavior, not implementation details**
✅ **Use descriptive test names that explain the scenario**
✅ **Mock external dependencies consistently**
✅ **Test both happy path and error scenarios**
✅ **Keep tests simple and focused**
✅ **Use realistic test data**
✅ **Verify mock interactions when important**

### Don'ts

❌ **Don't skip tests because "it's simple code"**
❌ **Don't test implementation details**
❌ **Don't use production data in tests**
❌ **Don't write tests that depend on external services**
❌ **Don't ignore failing tests**
❌ **Don't write overly complex test setups**
❌ **Don't test third-party library functionality**

## Monitoring and Metrics

### Test Metrics to Track

- **Test execution time**: Monitor for slow tests
- **Code coverage trends**: Ensure coverage doesn't decrease
- **Test failure rates**: Identify flaky tests
- **Test maintenance burden**: Track test complexity

### Quality Gates

- **Minimum 80% code coverage** for all new code
- **Zero failing tests** in main branch
- **All critical paths covered** by tests
- **Performance benchmarks met**

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
