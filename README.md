# STRING CALCULATOR TDD KATA

A Test-Driven Development implementation of the String Calculator kata in Ruby 

## About

This project demonstrates:
- Test-Driven Development (TDD).
- I've used the Red-Green-Refactor cycle strategy:
  - Writing tests first
  - Minimal code to pass the tests
  - Incremental development through frequent commits
- Clean code principles
- Comprehensive test coverage using RSpec

- ## Red-Green-Refactor cycle strategy:
  - Red: Write a new RSpec test for the next requirement and run rspec. The test should fail. This forces the developer to think about the desired behaviour:
    
    <img width="808" height="368" alt="1-RED" src="https://github.com/user-attachments/assets/3f5a821a-b4ff-4ca1-9b9a-33b4b6e730b7" />


  - Green: Write [just enough code](https://github.com/amd4k/string_calculator_kata/blob/58789d839aa7d4296fe31423e9c8b2507d6c5ecc/lib/string_calculator.rb) in the class to make the test pass. Keep it simple:
    
    <img width="799" height="161" alt="2-GREEN" src="https://github.com/user-attachments/assets/bff4e5a8-58a0-4d52-b60a-73cd72429ace" />

  - Continue this Red-Green cycle and Refactor (while ensuring all tests still pass) when required.
    - Before:
     
      <img width="632" height="455" alt="9-BeforeRefactoring" src="https://github.com/user-attachments/assets/eb544523-3f13-4ca9-825a-9542654109fa" />      
      
    - After:
     
      <img width="619" height="473" alt="11-AfterRefactoring" src="https://github.com/user-attachments/assets/2da74a99-3f7f-42e1-be2b-64e898919b5f" />

```mermaid
graph TD
    A[Write a failing test] --> B{Does it fail?}
    B -->|Yes| C[Write minimal code to pass]
    C --> D{Do you have multiple passing tests?}
    D -->|No| E[Write next test]
    D -->|Yes| F{Is code messy/duplicated?}
    F -->|Yes| G[Refactor safely]
    F -->|No| E
    G --> H[All tests still pass?]
    H -->|Yes| E
```
## Developed using Ruby 3.3.9, Rails 8.0.3 on WSL for Windows 10 (Used 22.04.5 LTS Image)

