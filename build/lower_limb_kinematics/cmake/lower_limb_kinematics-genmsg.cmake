# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lower_limb_kinematics: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ilower_limb_kinematics:/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg;-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lower_limb_kinematics_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/imu_sample.msg" NAME_WE)
add_custom_target(_lower_limb_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lower_limb_kinematics" "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/imu_sample.msg" ""
)

get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/quaternion_sample.msg" NAME_WE)
add_custom_target(_lower_limb_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lower_limb_kinematics" "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/quaternion_sample.msg" ""
)

get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/foot_rp.msg" NAME_WE)
add_custom_target(_lower_limb_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lower_limb_kinematics" "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/foot_rp.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/foot_rp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lower_limb_kinematics
)
_generate_msg_cpp(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/quaternion_sample.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lower_limb_kinematics
)
_generate_msg_cpp(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/imu_sample.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lower_limb_kinematics
)

### Generating Services

### Generating Module File
_generate_module_cpp(lower_limb_kinematics
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lower_limb_kinematics
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lower_limb_kinematics_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lower_limb_kinematics_generate_messages lower_limb_kinematics_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/imu_sample.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_cpp _lower_limb_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/quaternion_sample.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_cpp _lower_limb_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/foot_rp.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_cpp _lower_limb_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lower_limb_kinematics_gencpp)
add_dependencies(lower_limb_kinematics_gencpp lower_limb_kinematics_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lower_limb_kinematics_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/foot_rp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lower_limb_kinematics
)
_generate_msg_eus(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/quaternion_sample.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lower_limb_kinematics
)
_generate_msg_eus(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/imu_sample.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lower_limb_kinematics
)

### Generating Services

### Generating Module File
_generate_module_eus(lower_limb_kinematics
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lower_limb_kinematics
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lower_limb_kinematics_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lower_limb_kinematics_generate_messages lower_limb_kinematics_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/imu_sample.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_eus _lower_limb_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/quaternion_sample.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_eus _lower_limb_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/foot_rp.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_eus _lower_limb_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lower_limb_kinematics_geneus)
add_dependencies(lower_limb_kinematics_geneus lower_limb_kinematics_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lower_limb_kinematics_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/foot_rp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lower_limb_kinematics
)
_generate_msg_lisp(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/quaternion_sample.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lower_limb_kinematics
)
_generate_msg_lisp(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/imu_sample.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lower_limb_kinematics
)

### Generating Services

### Generating Module File
_generate_module_lisp(lower_limb_kinematics
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lower_limb_kinematics
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lower_limb_kinematics_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lower_limb_kinematics_generate_messages lower_limb_kinematics_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/imu_sample.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_lisp _lower_limb_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/quaternion_sample.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_lisp _lower_limb_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/foot_rp.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_lisp _lower_limb_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lower_limb_kinematics_genlisp)
add_dependencies(lower_limb_kinematics_genlisp lower_limb_kinematics_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lower_limb_kinematics_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/foot_rp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lower_limb_kinematics
)
_generate_msg_py(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/quaternion_sample.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lower_limb_kinematics
)
_generate_msg_py(lower_limb_kinematics
  "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/imu_sample.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lower_limb_kinematics
)

### Generating Services

### Generating Module File
_generate_module_py(lower_limb_kinematics
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lower_limb_kinematics
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lower_limb_kinematics_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lower_limb_kinematics_generate_messages lower_limb_kinematics_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/imu_sample.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_py _lower_limb_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/quaternion_sample.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_py _lower_limb_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashwin/catkin_ws/src/lower_limb_kinematics/msg/foot_rp.msg" NAME_WE)
add_dependencies(lower_limb_kinematics_generate_messages_py _lower_limb_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lower_limb_kinematics_genpy)
add_dependencies(lower_limb_kinematics_genpy lower_limb_kinematics_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lower_limb_kinematics_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lower_limb_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lower_limb_kinematics
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lower_limb_kinematics_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lower_limb_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lower_limb_kinematics
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lower_limb_kinematics_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lower_limb_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lower_limb_kinematics
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lower_limb_kinematics_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lower_limb_kinematics)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lower_limb_kinematics\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lower_limb_kinematics
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lower_limb_kinematics_generate_messages_py std_msgs_generate_messages_py)
endif()
