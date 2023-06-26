PROJECT NAME: Pizzas-Restaurants API

DESCRIPTION: This is a RESTful API for managing pizza restaurants and their menus. It provides endpoints to create, read, update, and delete restaurants, pizzas, and their associations.

FEATURES: 
    1. CRUD operations for restaurants and pizzas
    2. Association management between restaurants and pizzas
    3. Validation of price in restaurant pizzas
    4. Error handling and appropriate status codes
    5. JSON response format

GETTING STARTED:
    INSTALLATION: Run the following commands;
        1. git clone [repository-ssh-key]
        2. bundle install
        3. rails db:migrate db:seed
        4. rails server or rails s (The API will be accessible at 'http://localhost:3000')

    API ENDPOINTS: The following routes are accessible in the browser;
        1. 'GET /restaurants': Retrieve a list of all restaurants.
        2. 'GET /restaurants/:id': Retrieve a specific restaurant by ID.
        3. 'DELETE /restaurants/:id': Delete a restaurant by ID.
        4. 'GET /pizzas': Retrieve a list of all pizzas.
        5. 'POST /restaurant_pizzas': Create a new restaurant pizza association. (tip: you can create a POST request via Postman)
    
ERROR HANDLING:
    The API handles various error scenarios and returns appropriate status codes and error messages in the JSON response. Common error scenarios include invalid requests, resource not found, and validation errors.

CONTRIBUTING:
Contributions are welcome! If you have any ideas, suggestions, or bug reports, please open an issue or submit a pull request.

To contribute to this project, follow these steps:

    1. Fork the repository.
    2. Create your feature branch: 'git checkout -b feature/my-feature'.
    3. Commit your changes: git commit -am 'Add some feature'.
    4. Push to the branch: git push origin feature/my-feature.
    5. Submit a pull request.

AUTHORS:
    Name - Yegon Japheth Kiptoo
    Github Username - Jay254
    Email - jyegon504@gmail.com
