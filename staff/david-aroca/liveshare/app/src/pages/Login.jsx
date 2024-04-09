import logic from "../logic"

function Login(onUserLoggedIn, onRegisteredClick) {
    const handleSubmit = event => {
        event.preventDefault()

        const form = event.target

        const username = form.username.value
        const password = form.password.value

        try {
            logic.loginUser(username, password)

            props.onUserRegisted
        } catch (error) {
            console.error(error)

            alert(error.message)
        }
    }

    const handeleRegisterClick = event => {
        event.preventDefault()

        onRegisteredClick
    }

    return <main className="main main--thin">
        <h1>Login</h1>

        <form className="form" onSubmit={handleSubmit}>

            <label htmlFor="username">Username</label>
            <input className="input" type="text" id="username" />

            <label htmlFor="password">Password</label>
            <input className="input" type="password" id="password" />

            <button className="button button--right" type="submit">Login</button>
        </form>
        <a className="link--center" href="register.html" onClick={handleRegisterClick}>Register</a>
    </main>
}

export default Login