docker build \
  -f ./Dockerfile \
  -t my_python_i \
   .
echo ---

docker rm python_c || true

docker run \
  -p 5000:5000 \
  --name python_c \
  -d \
  my_python_i

echo "Hello $name"