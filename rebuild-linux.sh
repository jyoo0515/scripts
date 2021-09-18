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
  ./build-linux.sh ../linux
else
  echo "========================"
  echo "Running ./build-linux.sh"
  echo "========================"
  ./build-linux.sh ../linux
fi

if [ -f "stretch.img" ]
then
  echo "===================="
  echo "Deleting stretch.img"
  echo "===================="
  rm stretch.img
fi

if [ -f "stretch.id_rsa" ]
then
  echo "======================="
  echo "Deleting stretch.id_rsa"
  echo "======================="
  rm stretch.id_rsa
fi

if [ -f "stretch.id_rsa.pub" ]
then
  echo "==========================="
  echo "Deleting stretch.id_rsa.pub"
  echo "==========================="
  rm stretch.id_rsa.pub
fi

echo "========================="
echo "Running ./create-image.sh"
echo "========================="
./create-image.sh

