# bookmark_manager

Week 6 - (Week 4 of the Makers Course Structure)

## Bookmark Manager

Building a web app that stores web bookmarks in a database.

This code is intended as a supplementary guide for [bookmark manager](https://github.com/makersacademy/course/tree/master/bookmark_manager). The commits on master branch roughly correspond with the walkthroughs provided in the challenge.


The project
'You're going to build a bookmark manager. A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.'


## Web App must have the following spec -

Show a list of bookmarks
Add new bookmarks
Delete bookmarks
Update bookmarks
Comment on bookmarks
Tag bookmarks into categories
Filter bookmarks by tag
Users are restricted to manage only their own bookmarks



## User Stories for Spec -

1)  As a user
    So i can see resources i have saved
    I'd like to be able to show a list of bookmarks

      Diagram 1

2)  As a user
    So i can add to my saved resources
    I'd like to be able to save a sites address and title to the bookmark manager

3)  As a user
    So i can store my bookmark data for later retrieval
    I want to add a bookmark to Bookmark Manager


## Domain Model

![Domain Model Diagram](./Users/seanbanford/Documents/Maker's_Course_Projects/week_6_tasks/bookmark_manager/diagrams/Domain_Model_Diagram.jpg)

## Creating the Database from scratch -
Accessing database - Running the SQL Query

Bookmark_manager database

1 - Connect to psql
2 - Create the database using the psql command CREATE DATABASE bookmark_manager;
3 - Connect to the database using the pqsl command \c bookmark_manager;
4 - Run the query we have saved in the file 01_create_bookmarks_table.sql

bookmark_manager_test database

1 - Connect to psql
2 - Create the database using the psql command CREATE DATABASE bookmark_manager_test;
3 - Connect to the database using the pqsl command \c bookmark_manager_test;
4 - Run the query we have saved in the file 01_create_bookmarks_table.sql

Create Table Column 'title'

1 - Run the second query we have saved in the file 01_create_bookmarks_table.sql 
