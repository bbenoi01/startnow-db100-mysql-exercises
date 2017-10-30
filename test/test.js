const fs = require('fs');
const path = require('path');
const async = require('async');

const readFile = (file, cb) => {
  fs.readFile(file, 'utf-8', cb);
};

const resetDb = () => {
  async.map([
    path.join(__dirname, 'sakila-schema.sql'),
    path.join(__dirname, 'sakila-data.sql')
  ], readFile, (err, results) => {
    console.log(results[0]);
    console.log(results[1]);
  });
};

resetDb();
