# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "edge_detection: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iedge_detection:/home/fskiba/catkin_ws/src/edge_detection/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(edge_detection_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg" NAME_WE)
add_custom_target(_edge_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "edge_detection" "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg" "std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv" NAME_WE)
add_custom_target(_edge_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "edge_detection" "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv" "std_msgs/Header:edge_detection/requestEdges:sensor_msgs/Image"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(edge_detection
  "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/edge_detection
)

### Generating Services
_generate_srv_cpp(edge_detection
  "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/edge_detection
)

### Generating Module File
_generate_module_cpp(edge_detection
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/edge_detection
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(edge_detection_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(edge_detection_generate_messages edge_detection_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg" NAME_WE)
add_dependencies(edge_detection_generate_messages_cpp _edge_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv" NAME_WE)
add_dependencies(edge_detection_generate_messages_cpp _edge_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(edge_detection_gencpp)
add_dependencies(edge_detection_gencpp edge_detection_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS edge_detection_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(edge_detection
  "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/edge_detection
)

### Generating Services
_generate_srv_eus(edge_detection
  "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/edge_detection
)

### Generating Module File
_generate_module_eus(edge_detection
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/edge_detection
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(edge_detection_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(edge_detection_generate_messages edge_detection_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg" NAME_WE)
add_dependencies(edge_detection_generate_messages_eus _edge_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv" NAME_WE)
add_dependencies(edge_detection_generate_messages_eus _edge_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(edge_detection_geneus)
add_dependencies(edge_detection_geneus edge_detection_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS edge_detection_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(edge_detection
  "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/edge_detection
)

### Generating Services
_generate_srv_lisp(edge_detection
  "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/edge_detection
)

### Generating Module File
_generate_module_lisp(edge_detection
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/edge_detection
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(edge_detection_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(edge_detection_generate_messages edge_detection_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg" NAME_WE)
add_dependencies(edge_detection_generate_messages_lisp _edge_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv" NAME_WE)
add_dependencies(edge_detection_generate_messages_lisp _edge_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(edge_detection_genlisp)
add_dependencies(edge_detection_genlisp edge_detection_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS edge_detection_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(edge_detection
  "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/edge_detection
)

### Generating Services
_generate_srv_nodejs(edge_detection
  "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/edge_detection
)

### Generating Module File
_generate_module_nodejs(edge_detection
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/edge_detection
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(edge_detection_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(edge_detection_generate_messages edge_detection_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg" NAME_WE)
add_dependencies(edge_detection_generate_messages_nodejs _edge_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv" NAME_WE)
add_dependencies(edge_detection_generate_messages_nodejs _edge_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(edge_detection_gennodejs)
add_dependencies(edge_detection_gennodejs edge_detection_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS edge_detection_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(edge_detection
  "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edge_detection
)

### Generating Services
_generate_srv_py(edge_detection
  "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edge_detection
)

### Generating Module File
_generate_module_py(edge_detection
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edge_detection
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(edge_detection_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(edge_detection_generate_messages edge_detection_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/msg/requestEdges.msg" NAME_WE)
add_dependencies(edge_detection_generate_messages_py _edge_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fskiba/catkin_ws/src/edge_detection/srv/edgeDetection.srv" NAME_WE)
add_dependencies(edge_detection_generate_messages_py _edge_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(edge_detection_genpy)
add_dependencies(edge_detection_genpy edge_detection_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS edge_detection_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/edge_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/edge_detection
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(edge_detection_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(edge_detection_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(edge_detection_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/edge_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/edge_detection
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(edge_detection_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(edge_detection_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(edge_detection_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/edge_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/edge_detection
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(edge_detection_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(edge_detection_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(edge_detection_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/edge_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/edge_detection
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(edge_detection_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(edge_detection_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(edge_detection_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edge_detection)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edge_detection\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edge_detection
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(edge_detection_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(edge_detection_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(edge_detection_generate_messages_py sensor_msgs_generate_messages_py)
endif()
