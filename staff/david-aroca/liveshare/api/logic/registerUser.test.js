import mongoose from 'mongoose'
import registerUser from './registerUser.js'

mongoose.connect('mongodb://localhost:27017/test')
    .then(() => {
        try {
            registerUser('Pepito Grillo 5', '2000-01-05', 'pepito@grillo5.com', 'pepitogrillo5', '123123123')
                .then(() => console.log('user registered'))
                .catch(error => console.error(error))
        } catch (error) {
            console.error(error)
        }
    })