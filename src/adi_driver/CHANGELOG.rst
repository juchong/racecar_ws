^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package adi_driver
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.0.3 (2018-11-12)
------------------
* Change to depend on imu_tools(`#19 <https://github.com/tork-a/adi_driver/issues/19>`_)
  - Depend on imu_filter_madgwick and rviz_imu_plugin
* Add bias estimation service document(`#20 <https://github.com/tork-a/adi_driver/issues/20>`_)
  - Update README.md
  - Fix incorrect sentence.
* Contributors: Ryosuke Tajima

1.0.2 (2018-08-17)
------------------
* Add bias estimation service(`#13 <https://github.com/tork-a/adi_driver/issues/13>`_)
  - Add function for bias estimation
  - Add bias estimation time function
  - Remove unnecessary depens on imu_tools
* Add temperature topic(`#17 <https://github.com/tork-a/adi_driver/issues/17>`_)
  - Add topic description to README.md
  - Add mutex lock for data queues in the test script
  - Add test for temperature publishing
* Add circleci badge(`#18 <https://github.com/tork-a/adi_driver/issues/18>`_)
* Adaptation for Circleci 2.0(`#16 <https://github.com/tork-a/adi_driver/issues/16>`_)
  - Add circleci v2.0 config file
* Contributors: Kazuki Takao, Ryosuke Tajima

1.0.1 (2018-02-02)
------------------
* fix deb path (`#8 <https://github.com/tork-a/adi_driver/issues/8>`_)
* workaround for run_tests on installed space (`#7 <https://github.com/tork-a/adi_driver/issues/7>`_)
  * enable deb build
  * add rosdoc.yaml
  * add .github_release.sh
  * Change photo of the sensor
  * Add author to package.xml (`#5 <https://github.com/tork-a/adi_driver/issues/5>`_)
  * Add urdf to install (`#5 <https://github.com/tork-a/adi_driver/issues/5>`_)
  * add roslaunch-check with_rviz:=true with_plot:=true
  * install test directory
  * workaround for run_tests on installed space
* Add adxl345 descrption into README.md (`#4 <https://github.com/tork-a/adi_driver/issues/4>`_)
* Contributors: Ryosuke Tajima, Tokyo Opensource Robotics Developer 534

1.0.0 (2018-01-21)
------------------
* note that you need to restart after addgroup (`#3 <https://github.com/tork-a/adi_driver/issues/3>`_)
* Add publish_tf argument for launch file
* Change to load model only if use rviz
* Update index.rst
* Fix schematics, add documents
  - Schematics of ADIS16470 cable was wrong
  - Add ADXL345 cable schematics
* Add docbuild (`#2 <https://github.com/tork-a/adi_driver/issues/2>`_)
  * add circle.yml
  * add docbuild command to CMakeLists.txt
  * Update index.rst contents
  * Put travis badge.
* Contributors: Ryosuke Tajima, Tokyo Opensource Robotics Developer 534, Y. Suzuki

0.0.1 (2017-12-14)
------------------
* Add doc/index.rst
* Fix build errors
* Remove all error of roslint
* Add roslint settings
* Adjust header inclusion
* Add loop rate parameter
* Refactor adis16470 code
* Add and change copyrights
* Change copyright representation
* Change test more practical
* add .travis.yml (`#1 <https://github.com/7675t/adi_driver/issues/1>`)
* add xacro to pakcage.xml
* add rviz, imu_filter_madgwick to pakcage.xml
* fix layout in package.xml
* add rqt_plot to package.xml
* add .travis.yml, using generate_prerelease_script.py
* Contributors: Ryosuke Tajima, Tokyo Opensource Robotics Developer 534
