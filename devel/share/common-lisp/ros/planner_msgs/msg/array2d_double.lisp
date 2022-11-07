; Auto-generated. Do not edit!


(cl:in-package planner_msgs-msg)


;//! \htmlinclude array2d_double.msg.html

(cl:defclass <array2d_double> (roslisp-msg-protocol:ros-message)
  ((array2d_double
    :reader array2d_double
    :initarg :array2d_double
    :type (cl:vector planner_msgs-msg:array1d_double)
   :initform (cl:make-array 0 :element-type 'planner_msgs-msg:array1d_double :initial-element (cl:make-instance 'planner_msgs-msg:array1d_double))))
)

(cl:defclass array2d_double (<array2d_double>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <array2d_double>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'array2d_double)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-msg:<array2d_double> is deprecated: use planner_msgs-msg:array2d_double instead.")))

(cl:ensure-generic-function 'array2d_double-val :lambda-list '(m))
(cl:defmethod array2d_double-val ((m <array2d_double>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:array2d_double-val is deprecated.  Use planner_msgs-msg:array2d_double instead.")
  (array2d_double m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <array2d_double>) ostream)
  "Serializes a message object of type '<array2d_double>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array2d_double))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'array2d_double))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <array2d_double>) istream)
  "Deserializes a message object of type '<array2d_double>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'array2d_double) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'array2d_double)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planner_msgs-msg:array1d_double))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<array2d_double>)))
  "Returns string type for a message object of type '<array2d_double>"
  "planner_msgs/array2d_double")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'array2d_double)))
  "Returns string type for a message object of type 'array2d_double"
  "planner_msgs/array2d_double")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<array2d_double>)))
  "Returns md5sum for a message object of type '<array2d_double>"
  "c0e71cb94ac024b6a7159492ec303e32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'array2d_double)))
  "Returns md5sum for a message object of type 'array2d_double"
  "c0e71cb94ac024b6a7159492ec303e32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<array2d_double>)))
  "Returns full string definition for message of type '<array2d_double>"
  (cl:format cl:nil "array1d_double[] array2d_double~%================================================================================~%MSG: planner_msgs/array1d_double~%float64[] array1d_double~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'array2d_double)))
  "Returns full string definition for message of type 'array2d_double"
  (cl:format cl:nil "array1d_double[] array2d_double~%================================================================================~%MSG: planner_msgs/array1d_double~%float64[] array1d_double~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <array2d_double>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array2d_double) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <array2d_double>))
  "Converts a ROS message object to a list"
  (cl:list 'array2d_double
    (cl:cons ':array2d_double (array2d_double msg))
))
