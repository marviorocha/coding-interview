# Coding Interview System

## Overview

This system is a Rails-based application designed to manage users, companies, and tweets. It includes features such as CRUD operations for companies, user management, tweet pagination, and email notifications for new users.

## Features

-   **User Management**: Create, update, and delete users.
-   **Company Management**: Full CRUD operations for companies.
-   **Tweet Pagination**: Infinite scroll-like functionality for tweets.
-   **Email Notifications**: Welcome email sent to new users.

## Requirements

-   Ruby 2.7.6
-   Rails 5.2.6
-   SQLite3

## Installation

1. Clone the repository:

    ```bash
    git clone <repository-url>
    ```

2. Navigate to the project directory:

    ```bash
    cd coding-interview
    ```

3. Install dependencies:

    ```bash
    bundle install
    ```

4. Set up the database:
    ```bash
    rails db:create db:migrate db:seed
    ```

## Usage

### Running the Server

Start the Rails server:

```bash
rails server
```

Access the application at `http://localhost:3000`.

### Testing

Run the test suite:

```bash
rspec
```

### Coverage

To generate test coverage reports:

```bash
rspec
```

Open the coverage report at `coverage/index.html`.

## Routes

### Companies CRUD

-   `GET /companies`: List all companies.
-   `GET /companies/:id`: Show a specific company.
-   `POST /companies`: Create a new company.
-   `PATCH /companies/:id`: Update a company.
-   `DELETE /companies/:id`: Delete a company.

### Users

-   `POST api/v1/users`: Create a new user.

### Tweets

-   `GET  api/v1/tweets`: List tweets with cursor-based pagination.

## Contributing

Feel free to submit issues or pull requests to improve the system.

## License

This project is licensed under the MIT License.

#### Ruby on Rails Code Challenge

Project Requirements:

-   Ruby version: 2.7.6

#### Before the code challenge:

-   Clone the repository locally and install all the dependencies
-   Get familiar with the codebase
-   Check the database schema
