# Bank App

Practice tech test to build a simple bank application using OOP in Ruby.

## Installation

`git clone git@github.com:telgi/bank-app.git`

`bundle install`

## How to Run

Use `irb` to interact with program

## Running Tests

Feature tested using `irb`

Unit tested using `rspec`

## User Stories

```
As a user,
So that I can see how much money I have,
I want an application that will tell me my current balance.

As a user,
So that I can keep my balance topped up,
I want to be able to make deposits to my balance.

As a user,
So that I can make purchases,
I want to be able to withdraw money from my balance.

As a user,
So that I can keep a record of my transactions,
I want to be able to print a statement as receipt.
```

## Features

### Account
##### *Responsible for managing user account*
* Has a balance that starts at zero [x]
* Has a balance that updates and returns current amount [x]
* Allows user to deposit amount [x]
* Allows user to withdraw amount [x]
* User cannot withdraw amount that takes balance below zero [x]
* Allows user to display statement [x]

### Calculator
##### *Responsible for working out changes to balance*
* Adds amount to balance [x]
* Subtracts amount from balance [x]

### Activity
##### *Responsible for logging transactions*
* logs every deposit with a date-stamp [x]
* logs every withdrawal with a date-stamp [x]

### Printer
##### *Responsible for printing account information*
* prints a statement of every transaction [x]

## Feature Driven Example

![Alt text](assets/images/example_screenshot.png?raw=true "Example Screenshot in irb")

## Test Coverage

![Alt text](coverage/assets/0.10.2/test_coverage_27_03_18.png?raw=true "Test Coverage on 27/03/2018")

#### Author

Terry Allitt

![Alt text](assets/images/placeholder.png?raw=true "Ruby placeholder until screenshot appears")
