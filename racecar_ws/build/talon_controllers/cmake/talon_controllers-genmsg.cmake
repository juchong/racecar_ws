# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "talon_controllers: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(talon_controllers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv" NAME_WE)
add_custom_target(_talon_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "talon_controllers" "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(talon_controllers
  "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_controllers
)

### Generating Module File
_generate_module_cpp(talon_controllers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_controllers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(talon_controllers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(talon_controllers_generate_messages talon_controllers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv" NAME_WE)
add_dependencies(talon_controllers_generate_messages_cpp _talon_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_controllers_gencpp)
add_dependencies(talon_controllers_gencpp talon_controllers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_controllers_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(talon_controllers
  "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_controllers
)

### Generating Module File
_generate_module_eus(talon_controllers
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_controllers
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(talon_controllers_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(talon_controllers_generate_messages talon_controllers_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv" NAME_WE)
add_dependencies(talon_controllers_generate_messages_eus _talon_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_controllers_geneus)
add_dependencies(talon_controllers_geneus talon_controllers_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_controllers_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(talon_controllers
  "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_controllers
)

### Generating Module File
_generate_module_lisp(talon_controllers
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_controllers
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(talon_controllers_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(talon_controllers_generate_messages talon_controllers_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv" NAME_WE)
add_dependencies(talon_controllers_generate_messages_lisp _talon_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_controllers_genlisp)
add_dependencies(talon_controllers_genlisp talon_controllers_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_controllers_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(talon_controllers
  "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_controllers
)

### Generating Module File
_generate_module_nodejs(talon_controllers
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_controllers
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(talon_controllers_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(talon_controllers_generate_messages talon_controllers_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv" NAME_WE)
add_dependencies(talon_controllers_generate_messages_nodejs _talon_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_controllers_gennodejs)
add_dependencies(talon_controllers_gennodejs talon_controllers_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_controllers_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(talon_controllers
  "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_controllers
)

### Generating Module File
_generate_module_py(talon_controllers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_controllers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(talon_controllers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(talon_controllers_generate_messages talon_controllers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niallmullane/racecar_ws/racecar_ws/src/talon_controllers/srv/PidfSlot.srv" NAME_WE)
add_dependencies(talon_controllers_generate_messages_py _talon_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(talon_controllers_genpy)
add_dependencies(talon_controllers_genpy talon_controllers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS talon_controllers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/talon_controllers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET talon_controllers_generate_messages_cpp)
  add_dependencies(talon_controllers_generate_messages_cpp talon_controllers_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/talon_controllers
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET talon_controllers_generate_messages_eus)
  add_dependencies(talon_controllers_generate_messages_eus talon_controllers_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/talon_controllers
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET talon_controllers_generate_messages_lisp)
  add_dependencies(talon_controllers_generate_messages_lisp talon_controllers_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/talon_controllers
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET talon_controllers_generate_messages_nodejs)
  add_dependencies(talon_controllers_generate_messages_nodejs talon_controllers_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_controllers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_controllers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/talon_controllers
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET talon_controllers_generate_messages_py)
  add_dependencies(talon_controllers_generate_messages_py talon_controllers_generate_messages_py)
endif()
