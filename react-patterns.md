---
title: React Development Guidelines and Best Practices
inclusion: always
---
# React Development Guidelines

## Component Structure
- Use functional components with hooks
- Keep components small and focused (single responsibility)
- Separate business logic from UI components
- Follow the container/presentational pattern
- Prefer named exports over default exports

## Hooks
- Use `useState` for local component state
- Use `useEffect` for side effects
- Use `useMemo` and `useCallback` for performance optimization
- Create custom hooks for reusable logic
- Follow the rules of hooks (only call at top level)

## Props and State
- Define prop types with TypeScript interfaces
- Use destructuring for props
- Avoid deeply nested state objects
- Use state updater functions for complex state updates

## State Management
- Use React Context for global state
- Prefer useState for local component state
- Use useReducer for complex state logic

## Performance Optimization
- Memoize expensive calculations with useMemo
- Prevent unnecessary re-renders with React.memo
- Use useCallback for event handlers passed to child components
- Implement proper key props for lists
- Avoid creating objects/functions in render
- Use lazy loading for large components

## Styling
- Use CSS modules or styled-components
- Avoid inline styles for complex styling
- Use consistent naming conventions
- Implement responsive design patterns

## Testing
- Test component behavior, not implementation
- Use React Testing Library
- Test user interactions and accessibility
- Mock external dependencies