import express from 'express'

const app = express()

app.get('/', (_, res) => res.send({ message: 'OK' }))

app.listen(3_000)
