const knex = require('knex')({
    client: 'mysql',
    connection: {
      host : 'localhost',
      user : 'root',
      password : 'imam031294',
      database : 'apiwa'
    }
  });

module.exports = knex;