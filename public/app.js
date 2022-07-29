//Full-Stack App from scratch
//think of an idea-> create ERD
//make a new directory and GITHUB REPO
//make the database
//install dependencies (pg, express, nodemon)
//create tables
//seed db with data
//create express server
//connect express server to db
//create front end and make a request to backend

fetch("/books")
  .then((res) => {
    res.json();
  })
  .then((books) => {
    const div = document.querySelector("div");
    div.innerText(JSON.stringify(books));
  });
