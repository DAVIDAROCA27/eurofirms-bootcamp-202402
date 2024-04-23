
// pintar el contador
function paint(days, hours, minutes, seconds) {
    const htmlDays = document.querySelector("#days-value")
    const htmlHours = document.querySelector("#hours-value")
    const htmlMinutes = document.querySelector("#minutes-value")
    const htmlSeconds = document.querySelector("#seconds-value")

    htmlDays.innerText = days
    htmlHours.innerHTML = hours
    htmlMinutes.innerHTML = minutes
    htmlSeconds.innerHTML = seconds




}

// logica matematica
function updateCountDown() {
    const actualDate = Date.now() / 1000
    const doomsDay = 2147483647

    const secondsLeft = doomsDay - actualDate
    const minutesLeft = secondsLeft / 60
    const hoursLeft = minutesLeft / 60
    const daysLeft = hoursLeft / 24

    const secondsLeftToPrint = Math.floor(secondsLeft % 60)
    const minutesLeftToPrint = Math.floor(secondsLeft % 60)
    const hoursLeftToPrint = Math.floor(secondsLeft % 24)
    const daysLeftToPrint = Math.floor(daysLeft)

    return { secondsLeftToPrint, minutesLeftToPrint, hoursLeftToPrint, daysLeftToPrint }
}

// para refrescar el contador
setInterval(() => {
    const timeLeft = updateCountDown()

    const {
        daysLeftToPrint,
        hoursLeftToPrint,
        minutesLeftToPrint,
        secondsLeftToPrint
    } = timeLeft

    paint(daysLeftToPrint, hoursLeftToPrint, minutesLeftToPrint, secondsLeftToPrint)

}, 1000)