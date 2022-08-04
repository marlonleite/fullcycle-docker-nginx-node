const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  host: 'db',
  database: 'nodedb',
  password: 'postgres',
  port: 5432,
})

const getPeople = (request, response) => {
  pool.query('SELECT * FROM people ORDER BY id ASC', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

module.exports = {
  getPeople
}