const electron = window.require('electron')
const require = electron.remote.require
const Sqlite = require('sqlite3').verbose()

var DB = new Sqlite.Database('./DBTEST/test')

function trigger (c) {
  // DB.parallelize(c())
  DB.serialize(c())
  // c()
}

var startTime = +new Date()
DB.on('profile', function (o, t) {
  console.log(`${t}---${o}`)
  console.log(`时间：${new Date() - startTime}`)
})

export function sqliteTest (num) {
  // trigger(() => {
  //   DB.run(`CREATE TABLE IF NOT EXISTS test${num} (
  //     text TEXT,
  //     numeric NUMERIC,
  //     integer INTEGER,
  //     real REAL,
  //     none
  //   );`)
  // })
  trigger(() => {
    DB.serialize(function () {
      DB.get(`insert into test1 values(5,5,5,5,5)`, function (err, op) {
        if (err) {
          console.error(err)
        } else {
          // console.log(op)
        }
      })
    })
  })
  // trigger(() => {
  //   DB.all(`select * from test${num} limit 3`, function (bb, op) {
  //     console.log(op)
  //   })
  // })
}

var l = 500

while (l) {
  l--
  sqliteTest(l)
}
