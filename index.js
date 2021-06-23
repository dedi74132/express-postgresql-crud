const express = require('express');
const app = express();

const pool = require('./db');
const uuid = require('uuid');
const bcrypt = require('bcrypt');
let salt = bcrypt.genSaltSync(10);

app.use(express.json());
// app.use(express.urlencoded(extends: false));

// Routes user
// get all user
app.get("/api/users", async (req, res) => {
    try {
        const getUsers = await pool.query("select * from users");
        res.json(getUsers.rows);
    } catch (err) {
        console.log(err.message);
    }
})

// show user
app.get("/api/users/:id", async (req, res) => {
    const { id } = req.params;
    try {
        const getUserById = await pool.query(`select * from users where id = $1`, [id],);
        res.json(getUserById.rows[0]);
    } catch (err) {
        console.log(err.message)
    }
})

// create user
app.post('/api/users', async (req, res) => {
    try {
        let username = req.body.username;
        let name = req.body.name;
        let email = req.body.email;
        let uid = uuid.v4();
        let pwd = bcrypt.hashSync(req.body.password, salt);

        const newUser = await pool.query(`INSERT INTO users ( id, username, name, email, password) VALUES ('${uid}', '${username}', '${name}','${email}','${pwd}') RETURNING *`);
        res.send(newUser.rows);
        console.log(newUser);
    } catch (err) {
        console.error(err.message)
    }
})

// update user
app.put("/api/users/:id", async (req, res) => {
    try {
        const { id } = req.params;
        const { name } = req.body;
        const updateUser = await pool.query(`UPDATE users SET name = $1 where id = $2`, [name, id]);
        res.json("Data User Diupdate")
    } catch (err) {
        console.log(err.message);
    }
})

// delete user
app.delete("/api/users/:id", async (req, res) => {
    try {
        const { id } = req.params
        const delUser = await pool.query(`DELETE from users where id = $1`, [id]);
        res.json("Data user berhasil dihapus");
    } catch (err) {
        console.log(err.message);
    }
})

app.listen(3000, console.log("server is listening on port 3000 http://localhost:3000"));