# Bank Tech


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

If you want to run tests, just run rspec in the root folder of the project. Try rubocop if you want to get lot's of offences on your recors.


### Approach

I worked down the Domain model. Here are the three stages/steps that really help with the design of the program and understanding the relationship

| 1. | 2. |
|:---:|:---:|
| Nouns | Property or owner of property? |
| | |
| Actions | Owned by? |
| | |
| Actions | Property it reads or changes |


I did get lost a little, but it's like coming your hair with conditioner. Each stroke there are fewer knots.

### Structure

I did go for the simplest one, one class that's it model, but I notice now, that even in my model there were more owners, so I could have def extracted 2 more classes (Transaction & Printer). The Account class does not follow the Single Responsibility Principle. But I think I did a good job with private / public code. I am understanding that part I think.

Yay.
