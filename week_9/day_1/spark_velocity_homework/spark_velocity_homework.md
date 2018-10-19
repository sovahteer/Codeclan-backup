# Lab Pairs Generator

## Objectives
- Practice creating a basic Java Spark application
- Practice creating routes in a Java Spark application
- Practice using Velocity Templates in a Java Spark application

## The Task

### MVP

You are required to create a Java Spark application to generate cohort's lab pair assignments.

Create a ```Cohort``` class with a pre-populated AttayList of 20 ```Student``` objects.

Cohort should have methods that:
 * return a random one ```Student``` from the ArrayList
 * return an ArrayList with two random students (student cannot be paired with themself)

Create a Spark application which uses the classes you have created above. It should have the following routes:

`/random` - this should get a single random name from the list and display that name in the browser
`/pair` - this should get a random pair of names from the list and display that pair in the browser.

You should display the results using Velocity Templates. You will need a different Velocity Template for each route.

### Possible Extensions
Add further routes for:

- One random group of any number of students, like ```/group/:size``` for groups of 5 students.

- Display all pairs for one day's lab when user follows ```/pairs```
- Display all groups for one day's lab when user follows ```/groups/:size```