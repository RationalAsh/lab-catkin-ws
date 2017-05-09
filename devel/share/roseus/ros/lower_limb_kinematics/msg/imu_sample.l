;; Auto-generated. Do not edit!


(when (boundp 'lower_limb_kinematics::imu_sample)
  (if (not (find-package "LOWER_LIMB_KINEMATICS"))
    (make-package "LOWER_LIMB_KINEMATICS"))
  (shadow 'imu_sample (find-package "LOWER_LIMB_KINEMATICS")))
(unless (find-package "LOWER_LIMB_KINEMATICS::IMU_SAMPLE")
  (make-package "LOWER_LIMB_KINEMATICS::IMU_SAMPLE"))

(in-package "ROS")
;;//! \htmlinclude imu_sample.msg.html


(defclass lower_limb_kinematics::imu_sample
  :super ros::object
  :slots (_imu_sample _time ))

(defmethod lower_limb_kinematics::imu_sample
  (:init
   (&key
    ((:imu_sample __imu_sample) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _imu_sample __imu_sample)
   (setq _time (float __time))
   self)
  (:imu_sample
   (&optional __imu_sample)
   (if __imu_sample (setq _imu_sample __imu_sample)) _imu_sample)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32[9] _imu_sample
    (* 4    9)
    ;; float32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[9] _imu_sample
     (dotimes (i 9)
       (sys::poke (elt _imu_sample i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[9] _imu_sample
   (dotimes (i (length _imu_sample))
     (setf (elt _imu_sample i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lower_limb_kinematics::imu_sample :md5sum-) "6e7fe6e4f341022722ea2e4be6e80f82")
(setf (get lower_limb_kinematics::imu_sample :datatype-) "lower_limb_kinematics/imu_sample")
(setf (get lower_limb_kinematics::imu_sample :definition-)
      "float32[9] imu_sample
float32 time
")



(provide :lower_limb_kinematics/imu_sample "6e7fe6e4f341022722ea2e4be6e80f82")


