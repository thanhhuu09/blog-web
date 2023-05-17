import mysql from "mysql";

export const db = mysql.createConnection({
  host: "127.0.0.1",
  port: 3306,
  user: "root",
  password: "root123",
  database: "blog",
});

db.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL server: ", err);
    return;
  }
  console.log("Connected to MySQL server.");
});
