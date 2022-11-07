; Auto-generated. Do not edit!


(cl:in-package planner_msgs-srv)


;//! \htmlinclude reset_planner_to_default-request.msg.html

(cl:defclass <reset_planner_to_default-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass reset_planner_to_default-request (<reset_planner_to_default-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <reset_planner_to_default-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'reset_planner_to_default-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-srv:<reset_planner_to_default-request> is deprecated: use planner_msgs-srv:reset_planner_to_default-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <reset_planner_to_default-request>) ostream)
  "Serializes a message object of type '<reset_planner_to_default-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <reset_planner_to_default-request>) istream)
  "Deserializes a message object of type '<reset_planner_to_default-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<reset_planner_to_default-request>)))
  "Returns string type for a service object of type '<reset_planner_to_default-request>"
  "planner_msgs/reset_planner_to_defaultRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reset_planner_to_default-request)))
  "Returns string type for a service object of type 'reset_planner_to_default-request"
  "planner_msgs/reset_planner_to_defaultRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<reset_planner_to_default-request>)))
  "Returns md5sum for a message object of type '<reset_planner_to_default-request>"
  "0667a9bbb8555a2127e81724eb62d266")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'reset_planner_to_default-request)))
  "Returns md5sum for a message object of type 'reset_planner_to_default-request"
  "0667a9bbb8555a2127e81724eb62d266")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<reset_planner_to_default-request>)))
  "Returns full string definition for message of type '<reset_planner_to_default-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'reset_planner_to_default-request)))
  "Returns full string definition for message of type 'reset_planner_to_default-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <reset_planner_to_default-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <reset_planner_to_default-request>))
  "Converts a ROS message object to a list"
  (cl:list 'reset_planner_to_default-request
))
;//! \htmlinclude reset_planner_to_default-response.msg.html

(cl:defclass <reset_planner_to_default-response> (roslisp-msg-protocol:ros-message)
  ((reinitialized
    :reader reinitialized
    :initarg :reinitialized
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass reset_planner_to_default-response (<reset_planner_to_default-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <reset_planner_to_default-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'reset_planner_to_default-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-srv:<reset_planner_to_default-response> is deprecated: use planner_msgs-srv:reset_planner_to_default-response instead.")))

(cl:ensure-generic-function 'reinitialized-val :lambda-list '(m))
(cl:defmethod reinitialized-val ((m <reset_planner_to_default-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:reinitialized-val is deprecated.  Use planner_msgs-srv:reinitialized instead.")
  (reinitialized m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <reset_planner_to_default-response>) ostream)
  "Serializes a message object of type '<reset_planner_to_default-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reinitialized) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <reset_planner_to_default-response>) istream)
  "Deserializes a message object of type '<reset_planner_to_default-response>"
    (cl:setf (cl:slot-value msg 'reinitialized) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<reset_planner_to_default-response>)))
  "Returns string type for a service object of type '<reset_planner_to_default-response>"
  "planner_msgs/reset_planner_to_defaultResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reset_planner_to_default-response)))
  "Returns string type for a service object of type 'reset_planner_to_default-response"
  "planner_msgs/reset_planner_to_defaultResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<reset_planner_to_default-response>)))
  "Returns md5sum for a message object of type '<reset_planner_to_default-response>"
  "0667a9bbb8555a2127e81724eb62d266")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'reset_planner_to_default-response)))
  "Returns md5sum for a message object of type 'reset_planner_to_default-response"
  "0667a9bbb8555a2127e81724eb62d266")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<reset_planner_to_default-response>)))
  "Returns full string definition for message of type '<reset_planner_to_default-response>"
  (cl:format cl:nil "~%bool reinitialized~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'reset_planner_to_default-response)))
  "Returns full string definition for message of type 'reset_planner_to_default-response"
  (cl:format cl:nil "~%bool reinitialized~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <reset_planner_to_default-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <reset_planner_to_default-response>))
  "Converts a ROS message object to a list"
  (cl:list 'reset_planner_to_default-response
    (cl:cons ':reinitialized (reinitialized msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'reset_planner_to_default)))
  'reset_planner_to_default-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'reset_planner_to_default)))
  'reset_planner_to_default-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reset_planner_to_default)))
  "Returns string type for a service object of type '<reset_planner_to_default>"
  "planner_msgs/reset_planner_to_default")