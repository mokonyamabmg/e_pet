# ePetStore_assessment
Application that allows you a user to view variaty of categories, products and variants for a pet store.

## Getting Started
To begin using this template, choose one of the following options to get started:

* [Download the latest release here](https://github.com/mokonyamabmg/ePetStore_assessment/archive/refs/heads/main.zip)
* Clone the repo: git clone git@github.com:mokonyamabmg/ePetStore_assessment.git
* Fork the repo

## Start the project
The project is started with the regular Laravel and Vue commands.

step 1 - run composer install, to install php dependency files

step 2 - run npm install, to install NPM dependicies

step 3 - DB and App setup - There is two approaches to setup db and run the app

==============================================================================

option 1 (simple approach)

1. create DB from mysql [pet_store_db] 
2. import the pet_store_db.sql file found in the project.

3. configure the .env file found in the root of the project

  DB_DATABASE=pet_store_db
  DB_USERNAME=[username]
  DB_PASSWORD=[password]

4. run 'php artisan serve' to run the laravel server
5. run 'npm run watch' to run the vue server
6. you are good to go!!!!!!!!




option 2 (complex approach)

===========================================================================================
1. create DB from mysql [pet_store_db] 
2. configure the .env file found in the root of the project

  DB_DATABASE=pet_store_db
  DB_USERNAME=[username]
  DB_PASSWORD=[password]
  
3. run 'php artisan migrate', to migrate the DB
4. run 'php artisan db:seed', to populate the users and roles table
5. run 'php artisan serve' to run the laravel server
6. run 'npm run watch' to run the vue server
7. populate the categories, products, product_category and variants tables. importing the csv files found in the csv folder in the app root and the below end points. note, use Postman to execute the endpoints!!!!

- Populate categories table.
  Request - POST
  Endpoint - http://127.0.0.1:8000/api/categories/importCategories
  Form-data - key: file [change type to file]
            - value: upload the categories.csv 
- Populate products table.
  Request - POST
  Endpoint - http://127.0.0.1:8000/api/products/importProducts
  Form-data - key: file [change type to file]
            - value: upload the products.csv file

- Populate variants table.
  Request - POST
  Endpoint - http://127.0.0.1:8000/api/variants/importVariants
  Form-data - key: file [change type to file]
            - value: upload the variant.csv file
  
  - Populate product_category table.
  Request - POST
  Endpoint - http://127.0.0.1:8000/api/importProductCategories
  Form-data - key: file [change type to file]
            - value: upload the product_category.csv file

9. refresh the page and you are goo to go !!!!!!!!!!!!!!!!!!!.