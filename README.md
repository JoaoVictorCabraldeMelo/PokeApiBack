# README

* Ruby version
    # 3.0.2

* System dependencies
    # Postgres version 13 

    ```bash
        bundle install 
    ```

* Configuration

    Tem serializers e tem config the test com shoulda, factory e rspec

* Database creation

    ```bash
        rails db:create
        rails db:migrate
        rails db:seed
    ```

* Database initialization

    # Utiliza HTTParty gem como seed do banco de dados

* How to run the test suite

    Dentro do repo utilize rspec
    ```bash
        rspec
    ```

* Deployment instructions

    Heroku Postgres

    ## Servidor 

    https://floating-refuge-55116.herokuapp.com



* API Endpoints 
    ## Pegando todos os Pokemons 
        GET -> https://floating-refuge-55116.herokuapp.com/pokemons
    ## Fazendo historico de troca
        POST -> https://floating-refuge-55116.herokuapp.com/histories
        
        Request body esperado 
        ```json
            {
	            "pokemon_player1_ids": [ 100, 200, 300 ],
	            "pokemon_player2_ids": [ 400, 500, 600 ]
            } 
        ```
        Lembrando os ids de pokemon no banco vao ate 700

    ## Historico de Trocas 
        GET -> https://floating-refuge-55116.herokuapp.com/histories
