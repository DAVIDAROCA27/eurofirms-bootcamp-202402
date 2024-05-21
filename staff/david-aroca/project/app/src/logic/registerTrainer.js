import { errors, validate } from "com";

const { SystemError } = errors

// TODO
function registerTrainer(name, birthdate, email, username, password) {
    validate.name(name)
    validate.birthdate(birthdate)
    validate.email(email)
    validate.username(username)
    validate.password(password)

    return fetch(`${import.meta.env.VITE_API_URL}/users/trainer`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ name, birthdate, email, username, password })
    })
        .catch(error => { throw new SystemError(error.message) })
        .then(res => {
            if (res.status === 201) return

            return res.json()
                .catch(error => { throw new SystemError(error.message) })
                .then(body => {
                    const { error, message } = body

                    const constructor = errors[error]

                    throw new constructor(message)
                })
        })
}

export default registerTrainer