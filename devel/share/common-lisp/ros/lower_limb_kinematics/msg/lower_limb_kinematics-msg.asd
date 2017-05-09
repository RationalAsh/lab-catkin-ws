
(cl:in-package :asdf)

(defsystem "lower_limb_kinematics-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "quaternion_sample" :depends-on ("_package_quaternion_sample"))
    (:file "_package_quaternion_sample" :depends-on ("_package"))
    (:file "imu_sample" :depends-on ("_package_imu_sample"))
    (:file "_package_imu_sample" :depends-on ("_package"))
  ))