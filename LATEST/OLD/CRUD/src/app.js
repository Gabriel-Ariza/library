import expres from 'express'
import morgan from 'morgan'

const app = expres()
app.use(morgan('dev'));

export default app;