; Auto-generated. Do not edit!


(cl:in-package lower_limb_kinematics-msg)


;//! \htmlinclude quaternion_sample.msg.html

(cl:defclass <quaternion_sample> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0))
)

(cl:defclass quaternion_sample (<quaternion_sample>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quaternion_sample>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quaternion_sample)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lower_limb_kinematics-msg:<quaternion_sample> is deprecated: use lower_limb_kinematics-msg:quaternion_sample instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <quaternion_sample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lower_limb_kinematics-msg:x-val is deprecated.  Use lower_limb_kinematics-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <quaternion_sample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lower_limb_kinematics-msg:y-val is deprecated.  Use lower_limb_kinematics-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <quaternion_sample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lower_limb_kinematics-msg:z-val is deprecated.  Use lower_limb_kinematics-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <quaternion_sample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lower_limb_kinematics-msg:w-val is deprecated.  Use lower_limb_kinematics-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quaternion_sample>) ostream)
  "Serializes a message object of type '<quaternion_sample>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quaternion_sample>) istream)
  "Deserializes a message object of type '<quaternion_sample>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quaternion_sample>)))
  "Returns string type for a message object of type '<quaternion_sample>"
  "lower_limb_kinematics/quaternion_sample")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quaternion_sample)))
  "Returns string type for a message object of type 'quaternion_sample"
  "lower_limb_kinematics/quaternion_sample")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quaternion_sample>)))
  "Returns md5sum for a message object of type '<quaternion_sample>"
  "c3a70de85a9dd451c31fa86cab10a939")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quaternion_sample)))
  "Returns md5sum for a message object of type 'quaternion_sample"
  "c3a70de85a9dd451c31fa86cab10a939")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quaternion_sample>)))
  "Returns full string definition for message of type '<quaternion_sample>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 w~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quaternion_sample)))
  "Returns full string definition for message of type 'quaternion_sample"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 w~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quaternion_sample>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quaternion_sample>))
  "Converts a ROS message object to a list"
  (cl:list 'quaternion_sample
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':w (w msg))
))
