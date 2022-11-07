; Auto-generated. Do not edit!


(cl:in-package planner_msgs-srv)


;//! \htmlinclude planning_scene_info-request.msg.html

(cl:defclass <planning_scene_info-request> (roslisp-msg-protocol:ros-message)
  ((env_size_x
    :reader env_size_x
    :initarg :env_size_x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (env_size_y
    :reader env_size_y
    :initarg :env_size_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (show_environment_borders
    :reader show_environment_borders
    :initarg :show_environment_borders
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass planning_scene_info-request (<planning_scene_info-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <planning_scene_info-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'planning_scene_info-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-srv:<planning_scene_info-request> is deprecated: use planner_msgs-srv:planning_scene_info-request instead.")))

(cl:ensure-generic-function 'env_size_x-val :lambda-list '(m))
(cl:defmethod env_size_x-val ((m <planning_scene_info-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:env_size_x-val is deprecated.  Use planner_msgs-srv:env_size_x instead.")
  (env_size_x m))

(cl:ensure-generic-function 'env_size_y-val :lambda-list '(m))
(cl:defmethod env_size_y-val ((m <planning_scene_info-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:env_size_y-val is deprecated.  Use planner_msgs-srv:env_size_y instead.")
  (env_size_y m))

(cl:ensure-generic-function 'show_environment_borders-val :lambda-list '(m))
(cl:defmethod show_environment_borders-val ((m <planning_scene_info-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:show_environment_borders-val is deprecated.  Use planner_msgs-srv:show_environment_borders instead.")
  (show_environment_borders m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <planning_scene_info-request>) ostream)
  "Serializes a message object of type '<planning_scene_info-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'env_size_x))))
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
   (cl:slot-value msg 'env_size_x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'env_size_y))))
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
   (cl:slot-value msg 'env_size_y))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'show_environment_borders) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <planning_scene_info-request>) istream)
  "Deserializes a message object of type '<planning_scene_info-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'env_size_x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'env_size_x)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'env_size_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'env_size_y)))
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
    (cl:setf (cl:slot-value msg 'show_environment_borders) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<planning_scene_info-request>)))
  "Returns string type for a service object of type '<planning_scene_info-request>"
  "planner_msgs/planning_scene_infoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'planning_scene_info-request)))
  "Returns string type for a service object of type 'planning_scene_info-request"
  "planner_msgs/planning_scene_infoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<planning_scene_info-request>)))
  "Returns md5sum for a message object of type '<planning_scene_info-request>"
  "0f90a5fd7094d6c5f8a02858a00e3072")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'planning_scene_info-request)))
  "Returns md5sum for a message object of type 'planning_scene_info-request"
  "0f90a5fd7094d6c5f8a02858a00e3072")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<planning_scene_info-request>)))
  "Returns full string definition for message of type '<planning_scene_info-request>"
  (cl:format cl:nil "float64[] env_size_x~%float64[] env_size_y~%bool show_environment_borders~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'planning_scene_info-request)))
  "Returns full string definition for message of type 'planning_scene_info-request"
  (cl:format cl:nil "float64[] env_size_x~%float64[] env_size_y~%bool show_environment_borders~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <planning_scene_info-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'env_size_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'env_size_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <planning_scene_info-request>))
  "Converts a ROS message object to a list"
  (cl:list 'planning_scene_info-request
    (cl:cons ':env_size_x (env_size_x msg))
    (cl:cons ':env_size_y (env_size_y msg))
    (cl:cons ':show_environment_borders (show_environment_borders msg))
))
;//! \htmlinclude planning_scene_info-response.msg.html

(cl:defclass <planning_scene_info-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass planning_scene_info-response (<planning_scene_info-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <planning_scene_info-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'planning_scene_info-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-srv:<planning_scene_info-response> is deprecated: use planner_msgs-srv:planning_scene_info-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <planning_scene_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:ok-val is deprecated.  Use planner_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <planning_scene_info-response>) ostream)
  "Serializes a message object of type '<planning_scene_info-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <planning_scene_info-response>) istream)
  "Deserializes a message object of type '<planning_scene_info-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<planning_scene_info-response>)))
  "Returns string type for a service object of type '<planning_scene_info-response>"
  "planner_msgs/planning_scene_infoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'planning_scene_info-response)))
  "Returns string type for a service object of type 'planning_scene_info-response"
  "planner_msgs/planning_scene_infoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<planning_scene_info-response>)))
  "Returns md5sum for a message object of type '<planning_scene_info-response>"
  "0f90a5fd7094d6c5f8a02858a00e3072")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'planning_scene_info-response)))
  "Returns md5sum for a message object of type 'planning_scene_info-response"
  "0f90a5fd7094d6c5f8a02858a00e3072")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<planning_scene_info-response>)))
  "Returns full string definition for message of type '<planning_scene_info-response>"
  (cl:format cl:nil "~%bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'planning_scene_info-response)))
  "Returns full string definition for message of type 'planning_scene_info-response"
  (cl:format cl:nil "~%bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <planning_scene_info-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <planning_scene_info-response>))
  "Converts a ROS message object to a list"
  (cl:list 'planning_scene_info-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'planning_scene_info)))
  'planning_scene_info-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'planning_scene_info)))
  'planning_scene_info-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'planning_scene_info)))
  "Returns string type for a service object of type '<planning_scene_info>"
  "planner_msgs/planning_scene_info")