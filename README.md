### Vegan Wholefood Micronutrient Tracker

Build an app that allows a user to track their vitamin & mineral intake for the day, based on their food consumption, against UK RDA (Recommended Daily Amounts).

#### MVP

- The app should let the user select wholefoods from a dropdown and add the item to their 'food diary' for the day. ***Completed***
- The user should be able to assign 'quantity' (grams) and a 'mealtime' category (e.g. breakfast, lunch, dinner, snacks etc) to each item. ***Completed***
- The app should display all the items a user has entered in a single view 'food diary', with each item's quantity, mealtime, and food type. ***Completed***
- Items in the food diary should be ordered by mealtime (e.g. breakfast -> lunch -> dinner).
- It should be possible to delete each item added into the food diary for the day. ***Completed***
- The total vitamins & minerals consumed (based on entered food items) for the day should be displayed as percentage of the RDA in a table (see also extensions). ***Completed***
- It should be possible to add new food types to the database along with their nutrient composition. ***Completed***

*Inspired by: My Fitness Pal*

#### Possible Extensions

- Add a means of grouping/entering frequently eaten items into 'favourite meals' so it is simpler to use the next time. ***Completed***
- Selecting the food from the dropdown should have a filter for type (e.g. fruit / vegetable / grain / nuts & seeds) so the user doesn't have to scroll through a long list of all items.
- Items added for the day should be editable as well as just deleting (e.g. to update the quantity of an item that has already been entered.
- Show the vitamins & minerals percentages for the day graphically / something more visually attractive than a simple table.
- Mealtime category names should be editable.

####Technologies Used
- Ruby 
- Ruby gems (PG, Sinatra & Sinatra-Contrib)
- PostgresQL
- Sinatra
- HTML
- CSS
- Git/Github

####Installation instructions
- Install Ruby, Postgres, PG Gem, Sinatra Gem & Sinatra-Contrib Gem
- Clone Repo (https://github.com/IanGHill/wk5\_micronutrient\_tracker\_project) to local machine
- Create Postgres database called "micronutrient\_tracker" on local machine (Terminal command: "createdb micronutrient\_tracker") 
- Create the database tables by running the db/micronutrient.sql file (Terminal command "psql \-d micronutrient\_tracker \-f micronutrient.sql)"
- Populate the database tables by running the db\seeds.rb file (Terminal command "ruby db\seeds.rb")
- Start the application running by running the app.rb controller (Terminal command: "ruby app.rb"
- Open a browser
- Navigate to "http://localhost:4567/food-diary"
- You can now create your own food diary and calculate your micronutrient intake! 