; Auto-generated. Do not edit!


(cl:in-package lower_limb_kinematics-msg)


;//! \htmlinclude foot_rp.msg.html

(cl:defclass <foot_rp> (roslisp-msg-protocol:ros-message)
  ((roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0))
)

(cl:defclass foot_rp (<foot_rp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <foot_rp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'foot_rp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lower_limb_kinematics-msg:<foot_rp> is deprecated: use lower_limb_kinematics-msg:foot_rp instead.")))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <foot_rp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lower_limb_kinematics-msg:roll-val is deprecated.  Use lower_limb_kinematics-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <foot_rp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lower_limb_kinematics-msg:pitch-val is deprecated.  Use lower_limb_kinematics-msg:pitch instead.")
  (pitch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <foot_rp>) ostream)
  "Serializes a message object of type '<foot_rp>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <foot_rp>) istream)
  "Deserializes a message object of type '<foot_rp>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<foot_rp>)))
  "Returns string type for a message object of type '<foot_rp>"
  "lower_limb_kinematics/foot_rp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'foot_rp)))
  "Returns string type for a message object of type 'foot_rp"
  "lower_limb_kinematics/foot_rp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<foot_rp>)))
  "Returns md5sum for a message object of type '<foot_rp>"
  "0f5aa311af37faead3f9e90f420c9603")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'foot_rp)))
  "Returns md5sum for a message object of type 'foot_rp"
  "0f5aa311af37faead3f9e90f420c9603")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<foot_rp>)))
  "Returns full string definition for message of type '<foot_rp>"
  (cl:format cl:nil "float64 roll~%float64 pitch~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'foot_rp)))
  "Returns full string definition for message of type 'foot_rp"
  (cl:format cl:nil "float64 roll~%float64 pitch~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <foot_rp>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <foot_rp>))
  "Converts a ROS message object to a list"
  (cl:list 'foot_rp
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
))
