curl -X PATCH -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOnsiaWQiOiI2NjNhM2IxYmQyNmE4MWQ3MTc4ZjkwNDMiLCJyb2xlIjoidHJhaW5lciJ9LCJpYXQiOjE3MTUzNTAwMzcsImV4cCI6MTcxNTQ1ODAzN30.h8EpARVK_aP80b3ewl37j8r8PPvhGVwIgLdDFXmtcpY' \
-H 'Content-Type: application/json' \
-d '{"title":"new title again1111","image":"http://image.com/testsomething1111","video":"this is a video1111","description":"this is a description1111"}' \
http://localhost:4025/exercises/663b9ef8fa5811b4c292135f -v


# logica funciona correctamente 
#   {
#     _id: ObjectId('663b9ef8fa5811b4c292135f'),
#     author: ObjectId('663a3b1bd26a81d7178f9043'),
#     title: 'new title again1111',
#     image: 'http://image.com/testsomething1111',
#     __v: 0,
#     description: 'this is a description1111',
#     video: 'this is a video1111'
#   },