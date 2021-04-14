# URL SHORTENER
- A url shortener API built with rails and graphql



## Technologies used:

- Ruby 2.7
- Rails 6
- PostgreSQL 11
- GraphQL
  
## Prerequisites
- You need Ruby 2.7 installed
- You need postgres on your local machine
  
## Installation and Running the Application
- Clone this repo using `git clone git@github.com:NonsoAmadi10/UrlShortener.git`
- Run `bundle install` to install dependencies
  
## Database creation

- Run `rails db:create to create database`
  
## Database initialization
- Run `rails db:migrate` to migrate database tables
  
## How to run the test suite
- Run `bundle exec rspec`

## API DOCS
  **To use the API simply do:**
  - Open the graphql playground on the route path `/graphiql`
  - Pass the following request as a graphql query
  
  **Query**
  > query {
    shortenUrl(url: <a - valid - url>) {
      shortUrl
    }
  }

  **Successful Responses**
  > {
  "data": {
    "shortenUrl": {
      "shortUrl": "https://short-url.herokuapp.com/qrkuhn"
    }
  }
}

**Possible Errors**
<div  style="color: red; border: 1px solid black;padding: 2rem;">
<p> { </p>
  </p>"data": null,<p>
 <p> "errors": [ </p>
   <p> { </p>
      <p>"message": "Invalid attributes for Url: Full url has already been taken",</p>
      
  <p>} </p>
  <p>]</p>
}
</div>

## Author
- Houdini(NonsoAmadi10)