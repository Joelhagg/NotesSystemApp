const express = require("express");
const router = express.Router();

router.post("/", async (req, res) => {
  console.log("header", req.body.header);
  console.log("textContent", req.body.textContent);

  req.app.locals.con.connect((error) => {
    if (error) {
      console.log("error", error);
    }
    let header = req.body.header;
    let textContent = req.body.textContent;

    let sql = `INSERT INTO documents (header, textContent, lastChanged) VALUES('${header}', '${textContent}', '${lastChanged}')`;

    req.app.locals.con.query(sql, (error, result) => {
      if (error) {
        console.log(error);
      }
      console.log("result", result);
    });
  });
  res.json({ message: "success" });
});

module.exports = router;
