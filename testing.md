---
title: Baseline Testing Standards
inclusion: always
---

# Testing Standards

## Philosophy
Write tests alongside implementation. Every feature includes tests as part of definition of done.

## Testing Pyramid
- **Unit Tests (Many)**: Business logic, utilities, individual functions
- **Integration Tests (Some)**: API endpoints, database ops, service interactions
- **E2E Tests (Few)**: Critical user journeys only

## Coverage Requirements
| Scope | Minimum |
|-------|---------|
| Business logic | 80% |
| Critical paths (auth, payments, security) | 100% |
| Error paths | Required |

## Test Structure
- One test file per source file: `user-service.test.ts`
- Naming: "should [behavior] when [condition]"
- Pattern: Arrange-Act-Assert
- Group by method using nested `describe` blocks

## Mocking
Mock at service boundaries, not internal implementation:
```typescript
// Good: Mock at boundary
const mockUserRepository = {
  findByEmail: jest.fn(),
  create: jest.fn(),
} as jest.Mocked<IUserRepository>;

// Bad: Mock internals
jest.mock('./database-connection');
```

## Test Data
Use factories with realistic data:
```typescript
const createTestUser = (overrides = {}) => ({
  userId: 1,
  email: 'test@example.com',
  forename: 'Test',
  lastName: 'User',
  ...overrides,
});
```

## Quality Gates
- 80% coverage for new code
- Zero failing tests in main branch
- All critical paths covered

## Do's and Don'ts
✅ Test behavior, not implementation
✅ Test happy path and error scenarios
✅ Use descriptive test names
✅ Mock external dependencies consistently

❌ Skip tests for "simple code"
❌ Use production data in tests
❌ Depend on external services
❌ Test third-party library functionality

## Language-Specific

| Language | Framework | Location | Notes |
|----------|-----------|----------|-------|
| TypeScript/JS | Jest + Testing Library | `__tests__/` | React Testing Library for components |
| Python | pytest | `tests/` | Use fixtures for setup |
| Go | `testing` package | `*_test.go` | Table-driven tests |
