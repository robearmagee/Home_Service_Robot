#!/bin/sh
xterm  -e  " source $CATKIN_DIR/devel/setup.bash; roscore" &  # works ok
sleep 5
xterm  -e  " source $CATKIN_DIR/devel/setup.bash; roslaunch home_service_bot MyWorld.launch " & # works ok
sleep 5
xterm  -e  " source $CATKIN_DIR/devel/setup.bash; roslaunch turtlebot_gazebo gmapping_demo.launch " & # seems to work ok
sleep 7
xterm  -e  " source $CATKIN_DIR/devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch " & # loads ok
sleep 6
#xterm  -e  " source $CATKIN_DIR/devel/setup.bash; roslaunch turtlebot_teleop keyboard_teleop.launch " 
xterm  -e  " source $CATKIN_DIR/devel/setup.bash; rosrun wall_follower wall_follower_node "


#xterm  -e  " source $CATKIN_DIR/devel/setup.bash; rosservice call /gazebo/set_model_state '{model_state: { model_name: mobile_base, pose: { position: { x: -2.7, y: 7.3 ,z: 0 }, orientation: {x: 0, y: 0, z: -0.676, w: 0.737}}}}'" &
#sleep 5
#  xterm  -e  " source $CATKIN_DIR/devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(rospack find wall_follower)/../World/ushape.world" &
# sleep 5

#xterm  -e  " source $CATKIN_DIR/devel/setup.bash; rosrun gmapping slam_gmapping _linearUpdate:=0.1 _angularUpdate:=0.1 _particles:=30 _xmin:=-20 _ymin:=-20 _xmax:=20 _ymax:=20 _map_update_interval:=0.5 _lskip:=1 _delta:=0.05 _minimumScore:=200 _maxUrange:=50" &
#sleep 5
#xterm  -e  " source $CATKIN_DIR/devel/setup.bash; rosrun wall_follower wall_follower_node"
