curl -X GET -H 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOnsiaWQiOiI2NjNhM2IxYmQyNmE4MWQ3MTc4ZjkwNDMiLCJyb2xlIjoidHJhaW5lciJ9LCJpYXQiOjE3MTYxOTIxNjMsImV4cCI6MTcxNjIwMjk2M30.gFNdwZLnn1XjPsoakys4sJPPS4bLp5ZsmjXJBg1MePY' -d '{"title:"prueba"}' http://localhost:4025/exercises/ -v


# CON ESTO SI ME FUNCIONA PROBLEMA PRINCIPAL EL BODY
# curl -X GET -H 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOnsiaWQiOiI2NjNhM2IxYmQyNmE4MWQ3MTc4ZjkwNDMiLCJyb2xlIjoidHJhaW5lciJ9LCJpYXQiOjE3MTYxOTIxNjMsImV4cCI6MTcxNjIwMjk2M30.gFNdwZLnn1XjPsoakys4sJPPS4bLp5ZsmjXJBg1MePY' -d '{"title:"muerto"}' http://localhost:4025/exercises/ -v 
# $ ./search-exercise.sh
# Note: Unnecessary use of -X or --request, POST is already inferred.
# *   Trying [::1]:4025...
# * Connected to localhost (::1) port 4025
# > POST /exercises/search HTTP/1.1
# > Host: localhost:4025
# > User-Agent: curl/8.4.0
# > Accept: */*
# > authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOnsiaWQiOiI2NjNhM2IxYmQyNmE4MWQ3MTc4ZjkwNDMiLCJyb2xlIjoidHJhaW5lciJ9LCJpYXQiOjE3MTYxOTIxNjMsImV4cCI6MTcxNjIwMjk2M30.gFNdwZLnn1XjPsoakys4sJPPS4bLp5ZsmjXJBg1MePY
# > Content-Type: application/json
# > Content-Length: 14
# >
# < HTTP/1.1 400 Bad Request
# < X-Powered-By: Express
# < Access-Control-Allow-Origin: *
# < Content-Type: application/json; charset=utf-8
# < Content-Length: 99
# < ETag: W/"63-9ehZvAzWLRb+/xVsvQqFRSfKz5A"
# < Date: Mon, 20 May 2024 09:06:55 GMT
# < Connection: keep-alive
# < Keep-Alive: timeout=5
# <
# {"error":"TypeError","message":"Cannot destructure property 'q' of 'req.body' as it is undefined."}* Connection #0 
# to host localhost left intact

# emime@LAPTOP-SQF9JB06 MINGW64 ~/Desktop/eurofirms-bootcamp-202402/staff/david-aroca/project/api/test (feature/project)
# $ ./search-exercise.sh
# *   Trying [::1]:4025...
# * Connected to localhost (::1) port 4025
# > GET /exercises/ HTTP/1.1
# > Host: localhost:4025
# > User-Agent: curl/8.4.0
# > Accept: */*
# > authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOnsiaWQiOiI2NjNhM2IxYmQyNmE4MWQ3MTc4ZjkwNDMiLCJyb2xlIjoidHJhaW5lciJ9LCJpYXQiOjE3MTYxOTIxNjMsImV4cCI6MTcxNjIwMjk2M30.gFNdwZLnn1XjPsoakys4sJPPS4bLp5ZsmjXJBg1MePY
# > Content-Length: 17
# > Content-Type: application/x-www-form-urlencoded
# >
# < HTTP/1.1 200 OK
# < X-Powered-By: Express
# < Access-Control-Allow-Origin: *
# < Content-Type: application/json; charset=utf-8
# < Content-Length: 5977
# < ETag: W/"1759-K7WjW++UFO2KdjV+ENbGzGaV2cs"
# < Date: Mon, 20 May 2024 09:09:06 GMT
# < Connection: keep-alive
# < Keep-Alive: timeout=5
# <
# [{"author":{"_id":"663a4f9f7cc9193db5983fa5","username":"david","id":"663a4f9f7cc9193db5983fa5"},"title":"ESTO ES UNA PRUEBA","image":"PRUEBA","video":"PRUEBA","description":"Introducción\nEn este video, aprenderás a realizar correctamente el ejercicio de peso muerto, uno de los movimientos esenciales en el entrenamiento de fuerza. Verás la técnica adecuada, los rangos de repeticiones óptimos y el peso recomendado para diferentes niveles. También incluimos algunos consejos para obtener los mejores resultados y evitar lesiones.\n\nTécnica del Peso Muerto\nPosición Inicial:\n\nColoca los pies a la anchura de las caderas.\nLa barra debe estar sobre el empeine de los pies.\nAgáchate y 
# agarra la barra con las manos un poco más abiertas que los hombros.\nMantén la espalda recta y el pecho hacia afuera.\nLevantamiento:\n\nEmpuja con los talones mientras extiendes las piernas.\nMantén la barra cerca del cuerpo mientras te levantas.\nExtiende completamente las caderas y las rodillas al final del levantamiento.\nDescenso:\n\nBaja la barra lentamente invirtiendo el movimiento.\nMantén la espalda recta y flexiona las caderas y las rodillas.\nRangos de Repeticiones Óptimos\nFuerza: 3-5 repeticiones por serie.\nMasa muscular: 6-12 repeticiones por serie.\nResistencia muscular: 12-15 repeticiones por serie.\nPeso Recomendado\nPrincipiantes:\nEmpieza con una barra vacía (20 kg/45 lbs) o menos.\nEnfócate en la técnica.\nIntermedios:\nAumenta el peso gradualmente.\nTrabaja con un peso que te permita hacer 6-8 repeticiones con buena forma.\nAvanzados:\nIncrementa el peso de manera controlada.\nRealiza 
# 3-5 repeticiones por serie con buena técnica.\nConsejos Generales\nCalentamiento: Siempre calienta antes de empezar.\nTécnica Primero: Prioriza la técnica sobre el peso.\nProgresión Gradual: Aumenta el peso poco a poco.\nUso de Cinturón: Considera usar un cinturón para levantar pesos pesados.\nDescanso y Recuperación: Descansa adecuadamente entre series y días de entrenamiento.\nConclusión\nEl peso muerto es clave para desarrollar fuerza y músculo. Sigue estos pasos y consejos para incorporarlo de manera segura y efectiva en tu rutina. ¡Mira el video para una demostración completa!","id":"6645ddbec177058179655688"},{"author":{"_id":"663a3b1bd26a81d7178f9043","username":"josemamadotrainer1","id":"663a3b1bd26a81d7178f9043"},"title":"COMO HACER PESO MUERTO","image":"https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExczJiMjdsNG5jZnc5aG5qcjF0YWdoNWc1Zm91aG9tOGFybDM4OTF6NyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/SVNP800QoYcJZx1Wqx/giphy.webp","video":"https://youtu.be/7Sjfm61-HC4","description":"Introducción\n\nEn este video, aprenderás a realizar correctamente el ejercicio de peso muerto, uno de los movimientos esenciales en el entrenamiento de fuerza. Verás la técnica adecuada, los rangos de repeticiones óptimos y el peso recomendado para diferentes niveles. También incluimos algunos consejos para obtener los mejores resultados y evitar lesiones.\n\nTécnica del Peso Muerto\n\nPosición Inicial:\n\nColoca los pies a la anchura de las caderas.\nLa barra debe estar sobre el empeine de los 
# pies.\nAgáchate y agarra la barra con las manos un poco más abiertas que los hombros.\nMantén la espalda recta y el pecho hacia afuera.\nLevantamiento:\n\nEmpuja con los talones mientras extiendes las piernas.\nMantén la barra cerca del cuerpo mientras te levantas.\nExtiende completamente las caderas y las rodillas al final del levantamiento.\nDescenso:\n\nBaja la barra lentamente invirtiendo el movimiento.\nMantén la espalda recta y flexiona las caderas y las rodillas.\nRangos de Repeticiones Óptimos\n\nFuerza: 3-5 repeticiones por serie.\nMasa muscular: 6-12 repeticiones por serie.\nResistencia muscular: 12-15 repeticiones por serie.\nPeso Recomendado\n\nPrincipiantes: Empieza con una barra vacía (20 kg/45 lbs) o menos. Enfócate en la técnica.\nIntermedios: Aumenta el peso gradualmente. Trabaja con un peso que te permita hacer 6-8 repeticiones con buena forma.\nAvanzados: Incrementa el peso de manera controlada. Realiza 3-5 repeticiones por serie con buena técnica.\nConsejos Generales\n\nCalentamiento: Siempre calienta antes de empezar.\nTécnica Primero: Prioriza la técnica sobre el peso.\nProgresión Gradual: Aumenta el peso poco 
# a poco.\nUso de Cinturón: Considera usar un cinturón para levantar pesos pesados.\nDescanso y Recuperación: Descansa adecuadamente entre series y días de entrenamiento.\nConclusión\n\nEl peso muerto es clave para desarrollar fuerza y músculo. Sigue estos pasos y consejos para incorporarlo de manera segura y efectiva en tu rutina. ¡Mira el video para una demostración completa!","id":"6645c6c4c1770581796555df"},{"author":{"_id":"663a3b1bd26a81d7178f9043","username":"josemamadotrainer1","id":"663a3b1bd26a81d7178f9043"},"title":"ESTO ES UNA PRUEBA 123123","image":"https://media0.giphy.com/media/UJv4aOufZ3INq/200.webp?cid=790b7611rceqj0z3irmolvjs6f9bmho2q7z3rcjqy87c1sqg&ep=v1_gifs_search&rid=200.webp&ct=g","video":"ESTO ES UNA PRUEBA 123123","description":"ESTO ES UNA PRUEBA 123123","id":"6644c182e36893a8f88b7a45"},{"author":{"_id":"663a3aefae18ed96d6179179","username":"josemamadotrainer","id":"663a3aefae18ed96d6179179"},"title":"this is a test1.1","image":"http://image.com/testsomething","video":"test1.2","description":"test1.1","id":"663cc9365e5a58173d101f2d"},{"author":{"_id":"663a3b1bd26a81d7178f9043","username":"josemamadotrainer1","id":"663a3b1bd26a81d7178f9043"},"title":"new diet11111","image":"http://image.com/testsomething1111","description":"new diet11111","video":"new diet11111","id":"663b9ef8fa5811b4c292135f"},{"author":{"_id":"663a3b1bd26a81d7178f9043","username":"josemamadotrainer1","id":"663a3b1bd26a81d7178f9043"},"title":"SENTADILLA","image":"https://media1.giphy.com/media/t7GFoK91krh284Ct8B/giphy.webp?cid=ecf05e471ha5udxqaaf0dz67ga23fdzz1sxgbrhqfm8es0fv&ep=v1_gifs_search&rid=giphy.webp&ct=g","id":"663b9ed31be3fdb35d19bb33"}]* Connection #0 to host localhost left intact





# curl -X GET -H 'authorization:Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOnsiaWQiOiI2NjNhM2IxYmQyNmE4MWQ3MTc4ZjkwNDMiLCJyb2xlIjoidHJhaW5lciJ9LCJpYXQiOjE3MTYxOTIxNjMsImV4cCI6MTcxNjIwMjk2M30.gFNdwZLnn1XjPsoakys4sJPPS4bLp5ZsmjXJBg1MePY' -d '{"title":"muerto"}' http://localhost:4025/exercises/search -v



# curl -X GET -H 'authorization:Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOnsiaWQiOiI2NjNhM2IxYmQyNmE4MWQ3MTc4ZjkwNDMiLCJyb2xlIjoidHJhaW5lciJ9LCJpYXQiOjE3MTYxOTIxNjMsImV4cCI6MTcxNjIwMjk2M30.gFNdwZLnn1XjPsoakys4sJPPS4bLp5ZsmjXJBg1MePY' -H 'Content-Type: application/json' "http://localhost:4025/exercises/search?q=una%20prueba" -v



# $ ./search-exercise.sh
# Note: Unnecessary use of -X or --request, GET is already inferred.
# *   Trying [::1]:4025...
# * Connected to localhost (::1) port 4025
# > GET /exercises/search?q=una%20prueba HTTP/1.1
# > Host: localhost:4025
# > User-Agent: curl/8.4.0
# > Accept: */*
# > authorization:Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOnsiaWQiOiI2NjNhM2IxYmQyNmE4MWQ3MTc4ZjkwNDMiLCJyb2xlIjoidHJhaW5lciJ9LCJpYXQiOjE3MTYxOTIxNjMsImV4cCI6MTcxNjIwMjk2M30.gFNdwZLnn1XjPsoakys4sJPPS4bLp5ZsmjXJBg1MePY   
# > Content-Type: application/json
# >
# < HTTP/1.1 200 OK
# < X-Powered-By: Express
# < Access-Control-Allow-Origin: *
# < Content-Type: application/json; charset=utf-8
# < Content-Length: 2605
# < ETag: W/"a2d-1h+k/qWGxUFsvH25Q5Egj5eJL/4"
# < Date: Mon, 20 May 2024 08:38:29 GMT
# < Connection: keep-alive
# < Keep-Alive: timeout=5
# <
# [{"author":{"username":"josemamadotrainer1","id":"663a3b1bd26a81d7178f9043"},"title":"ESTO ES UNA PRUEBA 123123","image":"https://media0.giphy.com/media/UJv4aOufZ3INq/200.webp?cid=790b7611rceqj0z3irmolvjs6f9bmho2q7z3rcjqy87c1sqg&ep=v1_gifs_search&rid=200.webp&ct=g","video":"ESTO ES UNA PRUEBA 123123","description":"ESTO ES UNA PRUEBA 123123","id":"6644c182e36893a8f88b7a45"},{"author":{"username":"david","id":"663a4f9f7cc9193db5983fa5"},"title":"ESTO ES UNA PRUEBA","image":"PRUEBA","video":"PRUEBA","description":"Introducción\nEn este video, aprenderás a realizar correctamente el ejercicio de peso muerto, uno de los movimientos esenciales en el entrenamiento de fuerza. Verás la técnica adecuada, los rangos de repeticiones óptimos y el peso recomendado para diferentes niveles. También incluimos algunos consejos para obtener los mejores resultados y evitar lesiones.\n\nTécnica del Peso Muerto\nPosición Inicial:\n\nColoca los pies a la anchura de las caderas.\nLa barra debe estar sobre el empeine de los pies.\nAgáchate y agarra la barra con las manos un poco más abiertas que los hombros.\nMantén la espalda recta y el pecho hacia afuera.\nLevantamiento:\n\nEmpuja con los talones mientras extiendes las piernas.\nMantén la barra cerca del cuerpo mientras te levantas.\nExtiende completamente las caderas y las rodillas al final del levantamiento.\nDescenso:\n\nBaja la barra lentamente invirtiendo el movimiento.\nMantén la espalda recta y flexiona las caderas y las rodillas.\nRangos de Repeticiones Óptimos\nFuerza: 3-5 repeticiones por serie.\nMasa muscular: 6-12 repeticiones por serie.\nResistencia muscular: 12-15 repeticiones por serie.\nPeso Recomendado\nPrincipiantes:\nEmpieza con una barra vacía (20 kg/45 lbs) o menos.\nEnfócate en la técnica.\nIntermedios:\nAumenta el peso gradualmente.\nTrabaja con un peso que te permita hacer 6-8 repeticiones con buena forma.\nAvanzados:\nIncrementa el peso de manera controlada.\nRealiza 3-5 repeticiones por serie con buena técnica.\nConsejos Generales\nCalentamiento: Siempre calienta antes de empezar.\nTécnica Primero: Prioriza la técnica sobre el peso.\nProgresión Gradual: Aumenta el peso poco a poco.\nUso de Cinturón: Considera usar un cinturón para levantar pesos pesados.\nDescanso y Recuperación: Descansa adecuadamente entre series y días de entrenamiento.\nConclusión\nEl peso muerto es clave para desarrollar fuerza y músculo. Sigue estos pasos y consejos para incorporarlo de manera segura y efectiva en tu rutina. ¡Mira el video para una demostración completa!","id":"6645ddbec177058179655688"}]* Connection #0 to host localhost left intact