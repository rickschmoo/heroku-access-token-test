env
if [[$BUILD_ASSETS == ""]]; then
  echo HELLO2
else
  echo HELLO
  echo $BUILD_ASSETS;
fi