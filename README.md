# Bank Tech

Based off of  [this](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md) with [self assessment here](https://docs.google.com/forms/d/1Q-NnqVObbGLDHxlvbUfeAC7yBCf3eCjTmz6GOqC9Aeo/edit).

### How to run

Run:
```
bundler install
```

To run the project, set up an account with `name_account = Account.new` and do a few of the actions:
- name_account.deposit(amount)
- name_account.withdraw(amount)
- name_account.print_statement
and see what happens.

If you want to run tests, just run rspec in the root folder of the project. Try rubocop if you want to get lot's of offences on your record.


### Approach

I worked down the Domain model. Here are the three stages/steps that really help with the design of the program and understanding the relationship:

##### Domain model

| 1. | 2. |
|:---:|:---:|
| Nouns | Property or owner of property? | 
| | |
| Actions | Owned by? |
| | |
| Actions | Property it reads or changes |


I did get lost a little, but it's like coming your hair with conditioner. Each stroke there are fewer knots.

### Structure

I did go for the simplest one, one class that's it model, but I notice now, that even in my model there were more owners, so I could have def extracted 2 more classes (Transaction & Printer). The Account class does not follow the Single Responsibility Principle. But I think I did a good job with private / public code. I am understanding that part all right.

Yay.


### Self-assessment refactoring

Refactoring was pretty cool with the self assessments, divided the classes up, shortened lines of code, removed most repetition. Read a doc on refactoring now that says: extract variable -> extract method -> extract class. Good to see it shape up.
Also while revisiting my original domain all the places with ??? ended up having a faulty set up at first and got refactored. Feels good as things grow.


>> Done while at Makers
