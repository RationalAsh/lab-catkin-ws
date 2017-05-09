; Auto-generated. Do not edit!


(cl:in-package lower_limb_kinematics-msg)


;//! \htmlinclude imu_sample.msg.html

(cl:defclass <imu_sample> (roslisp-msg-protocol:ros-message)
  ((imu_sample
    :reader imu_sample
    :initarg :imu_sample
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass imu_sample (<imu_sample>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imu_sample>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imu_sample)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lower_limb_kinematics-msg:<imu_sample> is deprecated: use lower_limb_kinematics-msg:imu_sample instead.")))

(cl:ensure-generic-function 'imu_sample-val :lambda-list '(m))
(cl:defmethod imu_sample-val ((m <imu_sample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lower_limb_kinematics-msg:imu_sample-val is deprecated.  Use lower_limb_kinematics-msg:imu_sample instead.")
  (imu_sample m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <imu_sample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lower_limb_kinematics-msg:time-val is deprecated.  Use lower_limb_kinematics-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imu_sample>) ostream)
  "Serializes a message object of type '<imu_sample>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'imu_sample))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imu_sample>) istream)
  "Deserializes a message object of type '<imu_sample>"
  (cl:setf (cl:slot-value msg 'imu_sample) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'imu_sample)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imu_sample>)))
  "Returns string type for a message object of type '<imu_sample>"
  "lower_limb_kinematics/imu_sample")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imu_sample)))
  "Returns string type for a message object of type 'imu_sample"
  "lower_limb_kinematics/imu_sample")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imu_sample>)))
  "Returns md5sum for a message object of type '<imu_sample>"
  "6e7fe6e4f341022722ea2e4be6e80f82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imu_sample)))
  "Returns md5sum for a message object of type 'imu_sample"
  "6e7fe6e4f341022722ea2e4be6e80f82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imu_sample>)))
  "Returns full string definition for message of type '<imu_sample>"
  (cl:format cl:nil "float32[9] imu_sample~%float32 time~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imu_sample)))
  "Returns full string definition for message of type 'imu_sample"
  (cl:format cl:nil "float32[9] imu_sample~%float32 time~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imu_sample>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'imu_sample) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imu_sample>))
  "Converts a ROS message object to a list"
  (cl:list 'imu_sample
    (cl:cons ':imu_sample (imu_sample msg))
    (cl:cons ':time (time msg))
))
