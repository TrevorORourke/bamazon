var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Scenario1!",
  database: "bamazon_db"
});

// // connect to the mysql server and sql database
// connection.connect(function(err) {
//   if (err) throw err;
//   // run the start function after the connection is made to prompt the user
//   start();
// });


connection.connect(function (err) {
  if (err) throw err;
  connection.query("SELECT * FROM products", function (err, result, fields) {
    if (err) throw err;
    console.table(result);
    start()
  });
});

function start() {
  inquirer
    .prompt([{
      name: "selectItem",
      type: "list",
      message: "Which item would you like to buy?",
      choices: ["bike", "guitar", "golf clubs", "I-pad", "sneakers", "jeans", "makeup kit", "prefume", "cologne", "Tshirt"]
    },
    {
      name: "quantity",
      type: "input",
      message: "How many would you like to buy?",
      filter: Number
    }])

    .then(function (response) {
      var itemwanted = response.selectItem;

      var amountWanted = response.quantity;

      console.log(itemwanted)
      console.log(amountWanted)

      // purchaseOrder(itemwanted, amountWanted)

    })
}

// function purchaseOrder (selectItem, quantity) {

//   if (quantity <= stock_quantity )

//   console.log("Good news your order is in stock!");


// }


