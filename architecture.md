---
title: Architecture Standards
inclusion: always
---

# architecture.md

## Design Principles
- Separation of concerns
- DRY but not at the cost of clarity
- Composition over inheritance
- Fail fast with descriptive errors
- Single Responsibility Principle
- SOLID Principles

### SOLID Principles

All code must adhere to SOLID principles:

1. **Single Responsibility Principle**: Each class/function should have one reason to change
   - Separate Lambda handlers from business logic
   - Keep services focused on specific domains (UserService, DogService, etc.)

2. **Open/Closed Principle**: Open for extension, closed for modification
   - Use interfaces and abstract classes
   - Leverage dependency injection

3. **Liskov Substitution Principle**: Subtypes must be substitutable for their base types
   - Ensure derived classes honor base class contracts

4. **Interface Segregation Principle**: Many specific interfaces over one general interface
   - Create focused interfaces (e.g., `IUserReader`, `IUserWriter` vs single `IUserRepository`)

5. **Dependency Inversion Principle**: Depend on abstractions, not concretions
   - Inject dependencies through constructors
   - Use interfaces for all external dependencies (DynamoDB, S3, etc.)

## Code Organization
- Feature-based folder structure
- Colocation of related files
- Barrel exports for cleaner imports