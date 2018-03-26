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
##### *Responsible for managing user account*
* Has a balance that starts at zero [x]
* has a balance that updates and returns current amount [x]
* Allows user to deposit amount [x]
* Allows user to withdraw amount [x]
* User cannot withdraw amount that takes balance below zero [x]

### Calculator
##### *Responsible for working out changes to balance*
* Adds amount to balance [x]
* Subtracts amount from balance [x]

### Activity
##### *Responsible for logging transactions*
* logs every deposit with a date-stamp []
* logs every withdrawal with a date-stamp []

### Printer
##### *Responsible for displaying account information*
* Has a statement header [x]
* prints a statement of every transaction []

## Screenshot

![Alt text](assets/images/placeholder.png?raw=true "Ruby placeholder until screenshot appears")
