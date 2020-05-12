# Install script for directory: /home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zhyang/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/msg" TYPE FILE FILES
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/Accel.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/Echos.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/Imu.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/LaserScan.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/Odometry.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/Point.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/Pose.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/PoseStamped.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/PoseWithCovariance.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/Power.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/Quaternion.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/Twist.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/TwistWithCovariance.msg"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/msg/Vector3.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/srv" TYPE FILE FILES
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/srv/AddTwoInts.srv"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/srv/TalkerListener.srv"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/srv/SetCameraInfo.srv"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/srv/GetPlan.srv"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/srv/SetMap.srv"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/srv/GetMap.srv"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/srv/Empty.srv"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/srv/SetBool.srv"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/srv/Trigger.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/action" TYPE FILE FILES
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/action/AutoDocking.action"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/action/AddTwoInts.action"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/action/GetMap.action"
    "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/action/MoveBase.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/msg" TYPE FILE FILES
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AutoDockingAction.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AutoDockingActionGoal.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AutoDockingActionResult.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AutoDockingActionFeedback.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AutoDockingGoal.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AutoDockingResult.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AutoDockingFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/msg" TYPE FILE FILES
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AddTwoIntsAction.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AddTwoIntsActionGoal.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AddTwoIntsActionResult.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AddTwoIntsActionFeedback.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AddTwoIntsGoal.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AddTwoIntsResult.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/AddTwoIntsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/msg" TYPE FILE FILES
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/GetMapAction.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/GetMapActionGoal.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/GetMapActionResult.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/GetMapActionFeedback.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/GetMapGoal.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/GetMapResult.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/GetMapFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/msg" TYPE FILE FILES
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/MoveBaseAction.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/MoveBaseActionGoal.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/MoveBaseActionResult.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/MoveBaseActionFeedback.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/MoveBaseGoal.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/MoveBaseResult.msg"
    "/home/zhyang/catkin_ws/devel/share/msgs_demo/msg/MoveBaseFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/cmake" TYPE FILE FILES "/home/zhyang/catkin_ws/build/ROS-Academy-for-Beginners-melodic/msgs_demo/catkin_generated/installspace/msgs_demo-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zhyang/catkin_ws/devel/include/msgs_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/zhyang/catkin_ws/devel/share/roseus/ros/msgs_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/zhyang/catkin_ws/devel/share/common-lisp/ros/msgs_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/zhyang/catkin_ws/devel/share/gennodejs/ros/msgs_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/zhyang/catkin_ws/devel/lib/python2.7/dist-packages/msgs_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/zhyang/catkin_ws/devel/lib/python2.7/dist-packages/msgs_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zhyang/catkin_ws/build/ROS-Academy-for-Beginners-melodic/msgs_demo/catkin_generated/installspace/msgs_demo.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/cmake" TYPE FILE FILES "/home/zhyang/catkin_ws/build/ROS-Academy-for-Beginners-melodic/msgs_demo/catkin_generated/installspace/msgs_demo-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/cmake" TYPE FILE FILES
    "/home/zhyang/catkin_ws/build/ROS-Academy-for-Beginners-melodic/msgs_demo/catkin_generated/installspace/msgs_demoConfig.cmake"
    "/home/zhyang/catkin_ws/build/ROS-Academy-for-Beginners-melodic/msgs_demo/catkin_generated/installspace/msgs_demoConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo" TYPE FILE FILES "/home/zhyang/catkin_ws/src/ROS-Academy-for-Beginners-melodic/msgs_demo/package.xml")
endif()

