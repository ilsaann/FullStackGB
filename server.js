import express from "express";
import pg from "pg";
import { readFile } from "fs/promises";
import dotenv from "dotenv";


dotenv.config();

const pool = new pg.Pool({
    connectionString: process.env.DATABASE_URL,
    (process.env.NODE_ENV === 'production' ? {
            ssl: {
            refectUnauthorized: false,
            },
        }
    : {}),
});

// const pool = new pg.Pool({
//   database: "geobibli",
// });

//const PORT = 3000;
const app = express();

app.get("/books", (req, res) => {
  //res.send("book selection");
  pool.query("SELECT * FROM books").then((result) => {
    res.send(result.rows);
  });
});

app.get("/", (req, res) => {
  readFile("public/index.html", "utf-8").then((string) => {
    res.send(string);
  });
});

app.use(express.static("public"));

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});