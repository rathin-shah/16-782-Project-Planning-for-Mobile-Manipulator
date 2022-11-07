; Auto-generated. Do not edit!


(cl:in-package execution_msgs-srv)


;//! \htmlinclude execute_trajectory_robot-request.msg.html

(cl:defclass <execute_trajectory_robot-request> (roslisp-msg-protocol:ros-message)
  ((planner_type
    :reader planner_type
    :initarg :planner_type
    :type cl:string
    :initform "")
   (run_id
    :reader run_id
    :initarg :run_id
    :type cl:string
    :initform ""))
)

(cl:defclass execute_trajectory_robot-request (<execute_trajectory_robot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <execute_trajectory_robot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'execute_trajectory_robot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name execution_msgs-srv:<execute_trajectory_robot-request> is deprecated: use execution_msgs-srv:execute_trajectory_robot-request instead.")))

(cl:ensure-generic-function 'planner_type-val :lambda-list '(m))
(cl:defmethod planner_type-val ((m <execute_trajectory_robot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader execution_msgs-srv:planner_type-val is deprecated.  Use execution_msgs-srv:planner_type instead.")
  (planner_type m))

(cl:ensure-generic-function 'run_id-val :lambda-list '(m))
(cl:defmethod run_id-val ((m <execute_trajectory_robot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader execution_msgs-srv:run_id-val is deprecated.  Use execution_msgs-srv:run_id instead.")
  (run_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <execute_trajectory_robot-request>) ostream)
  "Serializes a message object of type '<execute_trajectory_robot-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planner_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planner_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'run_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'run_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <execute_trajectory_robot-request>) istream)
  "Deserializes a message object of type '<execute_trajectory_robot-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planner_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planner_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'run_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'run_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<execute_trajectory_robot-request>)))
  "Returns string type for a service object of type '<execute_trajectory_robot-request>"
  "execution_msgs/execute_trajectory_robotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'execute_trajectory_robot-request)))
  "Returns string type for a service object of type 'execute_trajectory_robot-request"
  "execution_msgs/execute_trajectory_robotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<execute_trajectory_robot-request>)))
  "Returns md5sum for a message object of type '<execute_trajectory_robot-request>"
  "05acbdefe3087529e04386c5ff659953")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'execute_trajectory_robot-request)))
  "Returns md5sum for a message object of type 'execute_trajectory_robot-request"
  "05acbdefe3087529e04386c5ff659953")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<execute_trajectory_robot-request>)))
  "Returns full string definition for message of type '<execute_trajectory_robot-request>"
  (cl:format cl:nil "#Type of planner (uni or bidirectional)~%string planner_type~%~%#ID of the planner run~%string run_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'execute_trajectory_robot-request)))
  "Returns full string definition for message of type 'execute_trajectory_robot-request"
  (cl:format cl:nil "#Type of planner (uni or bidirectional)~%string planner_type~%~%#ID of the planner run~%string run_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <execute_trajectory_robot-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'planner_type))
     4 (cl:length (cl:slot-value msg 'run_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <execute_trajectory_robot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'execute_trajectory_robot-request
    (cl:cons ':planner_type (planner_type msg))
    (cl:cons ':run_id (run_id msg))
))
;//! \htmlinclude execute_trajectory_robot-response.msg.html

(cl:defclass <execute_trajectory_robot-response> (roslisp-msg-protocol:ros-message)
  ((execution_success
    :reader execution_success
    :initarg :execution_success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass execute_trajectory_robot-response (<execute_trajectory_robot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <execute_trajectory_robot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'execute_trajectory_robot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name execution_msgs-srv:<execute_trajectory_robot-response> is deprecated: use execution_msgs-srv:execute_trajectory_robot-response instead.")))

(cl:ensure-generic-function 'execution_success-val :lambda-list '(m))
(cl:defmethod execution_success-val ((m <execute_trajectory_robot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader execution_msgs-srv:execution_success-val is deprecated.  Use execution_msgs-srv:execution_success instead.")
  (execution_success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <execute_trajectory_robot-response>) ostream)
  "Serializes a message object of type '<execute_trajectory_robot-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'execution_success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <execute_trajectory_robot-response>) istream)
  "Deserializes a message object of type '<execute_trajectory_robot-response>"
    (cl:setf (cl:slot-value msg 'execution_success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<execute_trajectory_robot-response>)))
  "Returns string type for a service object of type '<execute_trajectory_robot-response>"
  "execution_msgs/execute_trajectory_robotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'execute_trajectory_robot-response)))
  "Returns string type for a service object of type 'execute_trajectory_robot-response"
  "execution_msgs/execute_trajectory_robotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<execute_trajectory_robot-response>)))
  "Returns md5sum for a message object of type '<execute_trajectory_robot-response>"
  "05acbdefe3087529e04386c5ff659953")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'execute_trajectory_robot-response)))
  "Returns md5sum for a message object of type 'execute_trajectory_robot-response"
  "05acbdefe3087529e04386c5ff659953")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<execute_trajectory_robot-response>)))
  "Returns full string definition for message of type '<execute_trajectory_robot-response>"
  (cl:format cl:nil "~%#Flag indicating whether trajectory execution has been successfull~%bool execution_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'execute_trajectory_robot-response)))
  "Returns full string definition for message of type 'execute_trajectory_robot-response"
  (cl:format cl:nil "~%#Flag indicating whether trajectory execution has been successfull~%bool execution_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <execute_trajectory_robot-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <execute_trajectory_robot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'execute_trajectory_robot-response
    (cl:cons ':execution_success (execution_success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'execute_trajectory_robot)))
  'execute_trajectory_robot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'execute_trajectory_robot)))
  'execute_trajectory_robot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'execute_trajectory_robot)))
  "Returns string type for a service object of type '<execute_trajectory_robot>"
  "execution_msgs/execute_trajectory_robot")