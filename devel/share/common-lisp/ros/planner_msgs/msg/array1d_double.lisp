; Auto-generated. Do not edit!


(cl:in-package planner_msgs-msg)


;//! \htmlinclude array1d_double.msg.html

(cl:defclass <array1d_double> (roslisp-msg-protocol:ros-message)
  ((array1d_double
    :reader array1d_double
    :initarg :array1d_double
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass array1d_double (<array1d_double>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <array1d_double>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'array1d_double)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-msg:<array1d_double> is deprecated: use planner_msgs-msg:array1d_double instead.")))

(cl:ensure-generic-function 'array1d_double-val :lambda-list '(m))
(cl:defmethod array1d_double-val ((m <array1d_double>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:array1d_double-val is deprecated.  Use planner_msgs-msg:array1d_double instead.")
  (array1d_double m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <array1d_double>) ostream)
  "Serializes a message object of type '<array1d_double>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array1d_double))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'array1d_double))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <array1d_double>) istream)
  "Deserializes a message object of type '<array1d_double>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'array1d_double) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'array1d_double)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<array1d_double>)))
  "Returns string type for a message object of type '<array1d_double>"
  "planner_msgs/array1d_double")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'array1d_double)))
  "Returns string type for a message object of type 'array1d_double"
  "planner_msgs/array1d_double")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<array1d_double>)))
  "Returns md5sum for a message object of type '<array1d_double>"
  "053e2cce4d87337b8c6a7306fb74d968")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'array1d_double)))
  "Returns md5sum for a message object of type 'array1d_double"
  "053e2cce4d87337b8c6a7306fb74d968")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<array1d_double>)))
  "Returns full string definition for message of type '<array1d_double>"
  (cl:format cl:nil "float64[] array1d_double~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'array1d_double)))
  "Returns full string definition for message of type 'array1d_double"
  (cl:format cl:nil "float64[] array1d_double~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <array1d_double>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array1d_double) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <array1d_double>))
  "Converts a ROS message object to a list"
  (cl:list 'array1d_double
    (cl:cons ':array1d_double (array1d_double msg))
))
