fetch('http://localhost:8080/login', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ username: 'Pepejuano Grillo', password: '123123123' })
})
    .then(res => res.json())
    .then(userId => console.log(userId))
    .catch(error => console.error(error))