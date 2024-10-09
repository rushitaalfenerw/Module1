Worker Payment System
Overview
This project automates the weekly payment process for 400 workers by generating payment slips and assigning employee levels based on their salaries and gender. It includes both a Python and R implementation.

Features
Dynamically creates a list of 400 workers.
Assigns employee levels based on salary and gender:
If the salary is between $10,000 and $20,000, the worker is assigned Employee Level "A1".
If the salary is between $7,500 and $30,000 and the worker is female, the worker is assigned Employee Level "A5-F".
Generates a payment slip for each worker.
Exception handling to ensure smooth execution.
Files
Wpayment.py: Python implementation of the worker payment system.
Wpayment.R: R implementation of the worker payment system.
README.md: This README file explaining the project setup and execution.

Python

The program will generate a list of 400 workers with randomly assigned salaries and genders.
It will loop through each worker and assign an employee level based on the following conditions:
If salary is between $10,000 and $20,000, the employee level is set to "A1".
If salary is between $7,500 and $30,000 and the employee is female, the employee level is set to "A5-F".
The program will generate and print a payment slip for each worker, including their name, gender, salary, and employee level.

R
The R version performs the same actions as the Python version, generating the worker list, assigning employee levels, and producing payment slips.
Use the generate_payment_slips(workers) function to run the process.
Error Handling
The program includes exception handling (Python: try-except, R: tryCatch) to manage any potential errors that occur during the generation of payment slips.