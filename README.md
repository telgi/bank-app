# Bank App

Practice tech test to build a simple bank application using OOP in Ruby.

## Installation

In terminal:

`git clone git@github.com:telgi/bank-app.git`

## How to Run

In terminal:

Use `irb` to interact with program

## Running Tests

`rspec`

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
##### *Responsible for managing account*
* Has a balance that starts at zero [x]
* Allows user to deposit amount [x]
* Allows user to withdraw amount []
* Balance is responsible for knowing current funds
* Balance is responsible for updating current funds
* Balance is responsible for time-stamping transactions

### Calculator
##### *Responsible for working out changes to balance*
* Add is responsible for adding amount to balance
* Subtract is responsible for subtracting amount from balance

### Printer
##### *Responsible for displaying account information*
* Statement is responsible for printing receipt of account transaction

## Screenshot

![Alt text](assets/images/placeholder.png?raw=true "Ruby placeholder until screenshot appears")
