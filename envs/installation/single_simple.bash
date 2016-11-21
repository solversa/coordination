if [ -z "$GAZEBO_MODEL_PATH" ]; then
  bash -c 'echo "export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:"`pwd`/../assets/models >> ~/.bashrc'
else
  bash -c 'sed "s,GAZEBO_MODEL_PATH=[^;]*,'GAZEBO_MODEL_PATH=`pwd`/../assets/models'," -i ~/.bashrc'
fi

if [ -z "$GYM_GAZEBO_WORLD_POINT" ]; then
  bash -c 'echo "export GYM_GAZEBO_WORLD_POINT="`pwd`/../assets/worlds/point.world >> ~/.bashrc'
else
  bash -c 'sed "s,GYM_GAZEBO_WORLD_POINT=[^;]*,'GYM_GAZEBO_WORLD_MAZE=`pwd`/../assets/worlds/point.world'," -i ~/.bashrc'
fi

exec bash
