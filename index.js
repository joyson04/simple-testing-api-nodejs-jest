const mongoose = require("mongoose");
const app = require("./server");
require("dotenv").config();

mongoose
  .connect(process.env.MONGOD, { useNewUrlParser: true,  useUnifiedTopology: true  })
  .then(() => {
    app.listen(8000, () => {
      console.log("Server has started!");
    });
  });
