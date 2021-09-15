#!/bin/bash
if [ -d "build/linux" ]
then
  echo "==========================="
  echo "Found existsing linux build"
  echo "Deleting build/linux"
  echo "==========================="
  rm -rf build/linux

  echo "========================"
  echo "Running ./build-linux.sh"
  echo "========================"
  ./build-linux.sh
else
  echo "========================"
  echo "Running ./build-linux.sh"
  echo "========================"
  ./build-linux.sh
fi

echo "========================="
echo "Running ./create-image.sh"
echo "========================="
./create-image.sh

