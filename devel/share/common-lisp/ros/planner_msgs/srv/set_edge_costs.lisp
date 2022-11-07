; Auto-generated. Do not edit!


(cl:in-package planner_msgs-srv)


;//! \htmlinclude set_edge_costs-request.msg.html

(cl:defclass <set_edge_costs-request> (roslisp-msg-protocol:ros-message)
  ((edge_costs
    :reader edge_costs
    :initarg :edge_costs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass set_edge_costs-request (<set_edge_costs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_edge_costs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_edge_costs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-srv:<set_edge_costs-request> is deprecated: use planner_msgs-srv:set_edge_costs-request instead.")))

(cl:ensure-generic-function 'edge_costs-val :lambda-list '(m))
(cl:defmethod edge_costs-val ((m <set_edge_costs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:edge_costs-val is deprecated.  Use planner_msgs-srv:edge_costs instead.")
  (edge_costs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_edge_costs-request>) ostream)
  "Serializes a message object of type '<set_edge_costs-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'edge_costs))))
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
   (cl:slot-value msg 'edge_costs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_edge_costs-request>) istream)
  "Deserializes a message object of type '<set_edge_costs-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'edge_costs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'edge_costs)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_edge_costs-request>)))
  "Returns string type for a service object of type '<set_edge_costs-request>"
  "planner_msgs/set_edge_costsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_edge_costs-request)))
  "Returns string type for a service object of type 'set_edge_costs-request"
  "planner_msgs/set_edge_costsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_edge_costs-request>)))
  "Returns md5sum for a message object of type '<set_edge_costs-request>"
  "3cebc05ddbc84f67732803850c09e6e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_edge_costs-request)))
  "Returns md5sum for a message object of type 'set_edge_costs-request"
  "3cebc05ddbc84f67732803850c09e6e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_edge_costs-request>)))
  "Returns full string definition for message of type '<set_edge_costs-request>"
  (cl:format cl:nil "#Edge costs for c-space coordinates~%float64[] edge_costs~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_edge_costs-request)))
  "Returns full string definition for message of type 'set_edge_costs-request"
  (cl:format cl:nil "#Edge costs for c-space coordinates~%float64[] edge_costs~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_edge_costs-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'edge_costs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_edge_costs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_edge_costs-request
    (cl:cons ':edge_costs (edge_costs msg))
))
;//! \htmlinclude set_edge_costs-response.msg.html

(cl:defclass <set_edge_costs-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_edge_costs-response (<set_edge_costs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_edge_costs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_edge_costs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-srv:<set_edge_costs-response> is deprecated: use planner_msgs-srv:set_edge_costs-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <set_edge_costs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:ok-val is deprecated.  Use planner_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_edge_costs-response>) ostream)
  "Serializes a message object of type '<set_edge_costs-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_edge_costs-response>) istream)
  "Deserializes a message object of type '<set_edge_costs-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_edge_costs-response>)))
  "Returns string type for a service object of type '<set_edge_costs-response>"
  "planner_msgs/set_edge_costsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_edge_costs-response)))
  "Returns string type for a service object of type 'set_edge_costs-response"
  "planner_msgs/set_edge_costsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_edge_costs-response>)))
  "Returns md5sum for a message object of type '<set_edge_costs-response>"
  "3cebc05ddbc84f67732803850c09e6e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_edge_costs-response)))
  "Returns md5sum for a message object of type 'set_edge_costs-response"
  "3cebc05ddbc84f67732803850c09e6e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_edge_costs-response>)))
  "Returns full string definition for message of type '<set_edge_costs-response>"
  (cl:format cl:nil "~%bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_edge_costs-response)))
  "Returns full string definition for message of type 'set_edge_costs-response"
  (cl:format cl:nil "~%bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_edge_costs-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_edge_costs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_edge_costs-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_edge_costs)))
  'set_edge_costs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_edge_costs)))
  'set_edge_costs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_edge_costs)))
  "Returns string type for a service object of type '<set_edge_costs>"
  "planner_msgs/set_edge_costs")