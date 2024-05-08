import { useState, useEffect } from "react"
import { errors } from "../../../com"

import logic from "../logic"

// importar de el componente los post TODO

const { ContentError, MatchError } = errors

function Home({ onUserLoggedOut }) {
    // const [view, setView] = useState(null)
    const [user, setUser] = useState(null)
    // const [refreshStamp, setRefreshStamp] = useState(null)


    useEffect(() => {
        try {
            logic.retrieveUser()
                .then(user => setUser(user))
                .catch(error => {
                    console.error(error.message)

                    let feedback = error.message

                    if (error instanceof TypeError || error instanceof RangeError || error instanceof ContentError)
                        feedback = `${feedback}, please correct it `

                    else if (error instanceof MatchError)
                        feedback = `${feedback}, please verify user`
                    else
                        feedback = 'sorry,there was an error please try again later'
                    alert(feedback)
                })
        } catch (error) {
            console.error(error.message)

            if (error instanceof TypeError || error instanceof RangeError || error instanceof ContentError)
                feedback = `${feedback},please correct it`
            else
                feedback = 'sorry,there was an error,please try again later'
            alert(feedback)
        }

    }, [])




    return <>
        <header className=" flex justify-between items-center border-b-2 border to-black fixed top-0 w-full bg-white ">
            {user ? <h1> Hello,{user.name}</h1> : <p>Loading ...</p>}
        </header>

    </>

}

export default Home