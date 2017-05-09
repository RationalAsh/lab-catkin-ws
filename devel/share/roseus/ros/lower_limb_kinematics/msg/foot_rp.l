;; Auto-generated. Do not edit!


(when (boundp 'lower_limb_kinematics::foot_rp)
  (if (not (find-package "LOWER_LIMB_KINEMATICS"))
    (make-package "LOWER_LIMB_KINEMATICS"))
  (shadow 'foot_rp (find-package "LOWER_LIMB_KINEMATICS")))
(unless (find-package "LOWER_LIMB_KINEMATICS::FOOT_RP")
  (make-package "LOWER_LIMB_KINEMATICS::FOOT_RP"))

(in-package "ROS")
;;//! \htmlinclude foot_rp.msg.html


(defclass lower_limb_kinematics::foot_rp
  :super ros::object
  :slots (_roll _pitch ))

(defmethod lower_limb_kinematics::foot_rp
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:serialization-length
   ()
   (+
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get lower_limb_kinematics::foot_rp :md5sum-) "0f5aa311af37faead3f9e90f420c9603")
(setf (get lower_limb_kinematics::foot_rp :datatype-) "lower_limb_kinematics/foot_rp")
(setf (get lower_limb_kinematics::foot_rp :definition-)
      "float64 roll
float64 pitch
")



(provide :lower_limb_kinematics/foot_rp "0f5aa311af37faead3f9e90f420c9603")


