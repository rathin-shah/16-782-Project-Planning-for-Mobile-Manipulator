; Auto-generated. Do not edit!


(cl:in-package planner_msgs-srv)


;//! \htmlinclude run_planner_configs-request.msg.html

(cl:defclass <run_planner_configs-request> (roslisp-msg-protocol:ros-message)
  ((start_config
    :reader start_config
    :initarg :start_config
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (goal_config
    :reader goal_config
    :initarg :goal_config
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (planner_type
    :reader planner_type
    :initarg :planner_type
    :type cl:string
    :initform "")
   (run_id
    :reader run_id
    :initarg :run_id
    :type cl:fixnum
    :initform 0)
   (flag_iter_or_time
    :reader flag_iter_or_time
    :initarg :flag_iter_or_time
    :type cl:fixnum
    :initform 0)
   (iter_or_time
    :reader iter_or_time
    :initarg :iter_or_time
    :type cl:float
    :initform 0.0)
   (tree_optimization
    :reader tree_optimization
    :initarg :tree_optimization
    :type cl:boolean
    :initform cl:nil)
   (informed_sampling
    :reader informed_sampling
    :initarg :informed_sampling
    :type cl:boolean
    :initform cl:nil)
   (show_tree
    :reader show_tree
    :initarg :show_tree
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass run_planner_configs-request (<run_planner_configs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <run_planner_configs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'run_planner_configs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-srv:<run_planner_configs-request> is deprecated: use planner_msgs-srv:run_planner_configs-request instead.")))

(cl:ensure-generic-function 'start_config-val :lambda-list '(m))
(cl:defmethod start_config-val ((m <run_planner_configs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:start_config-val is deprecated.  Use planner_msgs-srv:start_config instead.")
  (start_config m))

(cl:ensure-generic-function 'goal_config-val :lambda-list '(m))
(cl:defmethod goal_config-val ((m <run_planner_configs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:goal_config-val is deprecated.  Use planner_msgs-srv:goal_config instead.")
  (goal_config m))

(cl:ensure-generic-function 'planner_type-val :lambda-list '(m))
(cl:defmethod planner_type-val ((m <run_planner_configs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:planner_type-val is deprecated.  Use planner_msgs-srv:planner_type instead.")
  (planner_type m))

(cl:ensure-generic-function 'run_id-val :lambda-list '(m))
(cl:defmethod run_id-val ((m <run_planner_configs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:run_id-val is deprecated.  Use planner_msgs-srv:run_id instead.")
  (run_id m))

(cl:ensure-generic-function 'flag_iter_or_time-val :lambda-list '(m))
(cl:defmethod flag_iter_or_time-val ((m <run_planner_configs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:flag_iter_or_time-val is deprecated.  Use planner_msgs-srv:flag_iter_or_time instead.")
  (flag_iter_or_time m))

(cl:ensure-generic-function 'iter_or_time-val :lambda-list '(m))
(cl:defmethod iter_or_time-val ((m <run_planner_configs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:iter_or_time-val is deprecated.  Use planner_msgs-srv:iter_or_time instead.")
  (iter_or_time m))

(cl:ensure-generic-function 'tree_optimization-val :lambda-list '(m))
(cl:defmethod tree_optimization-val ((m <run_planner_configs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:tree_optimization-val is deprecated.  Use planner_msgs-srv:tree_optimization instead.")
  (tree_optimization m))

(cl:ensure-generic-function 'informed_sampling-val :lambda-list '(m))
(cl:defmethod informed_sampling-val ((m <run_planner_configs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:informed_sampling-val is deprecated.  Use planner_msgs-srv:informed_sampling instead.")
  (informed_sampling m))

(cl:ensure-generic-function 'show_tree-val :lambda-list '(m))
(cl:defmethod show_tree-val ((m <run_planner_configs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:show_tree-val is deprecated.  Use planner_msgs-srv:show_tree instead.")
  (show_tree m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <run_planner_configs-request>) ostream)
  "Serializes a message object of type '<run_planner_configs-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'start_config))))
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
   (cl:slot-value msg 'start_config))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_config))))
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
   (cl:slot-value msg 'goal_config))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planner_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planner_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'run_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_iter_or_time)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'iter_or_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tree_optimization) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'informed_sampling) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'show_tree) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <run_planner_configs-request>) istream)
  "Deserializes a message object of type '<run_planner_configs-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'start_config) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'start_config)))
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
  (cl:setf (cl:slot-value msg 'goal_config) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_config)))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planner_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planner_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'run_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_iter_or_time)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'iter_or_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'tree_optimization) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'informed_sampling) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'show_tree) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<run_planner_configs-request>)))
  "Returns string type for a service object of type '<run_planner_configs-request>"
  "planner_msgs/run_planner_configsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'run_planner_configs-request)))
  "Returns string type for a service object of type 'run_planner_configs-request"
  "planner_msgs/run_planner_configsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<run_planner_configs-request>)))
  "Returns md5sum for a message object of type '<run_planner_configs-request>"
  "8ca5afb164ebfb318e4cc0e72e99b251")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'run_planner_configs-request)))
  "Returns md5sum for a message object of type 'run_planner_configs-request"
  "8ca5afb164ebfb318e4cc0e72e99b251")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<run_planner_configs-request>)))
  "Returns full string definition for message of type '<run_planner_configs-request>"
  (cl:format cl:nil "~%#Start and Goal Config~%float64[] start_config~%float64[] goal_config~%~%#Type of planner (uni or bidirectional)~%string planner_type~%~%#ID of the planner run~%uint8 run_id~%~%#Flag indicating whether maximum number of iterations of runtime is used~%uint8 flag_iter_or_time~%~%#Max. number of iterations / or max. runtime ~%float64 iter_or_time~%~%#Flag indicating whether tree optimization is used~%bool tree_optimization~%~%#Flag indicating whether informed sampling is used~%bool informed_sampling~%~%#Flag to visualize planning process~%bool show_tree~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'run_planner_configs-request)))
  "Returns full string definition for message of type 'run_planner_configs-request"
  (cl:format cl:nil "~%#Start and Goal Config~%float64[] start_config~%float64[] goal_config~%~%#Type of planner (uni or bidirectional)~%string planner_type~%~%#ID of the planner run~%uint8 run_id~%~%#Flag indicating whether maximum number of iterations of runtime is used~%uint8 flag_iter_or_time~%~%#Max. number of iterations / or max. runtime ~%float64 iter_or_time~%~%#Flag indicating whether tree optimization is used~%bool tree_optimization~%~%#Flag indicating whether informed sampling is used~%bool informed_sampling~%~%#Flag to visualize planning process~%bool show_tree~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <run_planner_configs-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_config) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_config) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'planner_type))
     1
     1
     8
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <run_planner_configs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'run_planner_configs-request
    (cl:cons ':start_config (start_config msg))
    (cl:cons ':goal_config (goal_config msg))
    (cl:cons ':planner_type (planner_type msg))
    (cl:cons ':run_id (run_id msg))
    (cl:cons ':flag_iter_or_time (flag_iter_or_time msg))
    (cl:cons ':iter_or_time (iter_or_time msg))
    (cl:cons ':tree_optimization (tree_optimization msg))
    (cl:cons ':informed_sampling (informed_sampling msg))
    (cl:cons ':show_tree (show_tree msg))
))
;//! \htmlinclude run_planner_configs-response.msg.html

(cl:defclass <run_planner_configs-response> (roslisp-msg-protocol:ros-message)
  ((joint_trajectory
    :reader joint_trajectory
    :initarg :joint_trajectory
    :type planner_msgs-msg:array2d_double
    :initform (cl:make-instance 'planner_msgs-msg:array2d_double))
   (ee_trajectory
    :reader ee_trajectory
    :initarg :ee_trajectory
    :type planner_msgs-msg:array2d_double
    :initform (cl:make-instance 'planner_msgs-msg:array2d_double))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass run_planner_configs-response (<run_planner_configs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <run_planner_configs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'run_planner_configs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-srv:<run_planner_configs-response> is deprecated: use planner_msgs-srv:run_planner_configs-response instead.")))

(cl:ensure-generic-function 'joint_trajectory-val :lambda-list '(m))
(cl:defmethod joint_trajectory-val ((m <run_planner_configs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:joint_trajectory-val is deprecated.  Use planner_msgs-srv:joint_trajectory instead.")
  (joint_trajectory m))

(cl:ensure-generic-function 'ee_trajectory-val :lambda-list '(m))
(cl:defmethod ee_trajectory-val ((m <run_planner_configs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:ee_trajectory-val is deprecated.  Use planner_msgs-srv:ee_trajectory instead.")
  (ee_trajectory m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <run_planner_configs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:success-val is deprecated.  Use planner_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <run_planner_configs-response>) ostream)
  "Serializes a message object of type '<run_planner_configs-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_trajectory) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ee_trajectory) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <run_planner_configs-response>) istream)
  "Deserializes a message object of type '<run_planner_configs-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_trajectory) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ee_trajectory) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<run_planner_configs-response>)))
  "Returns string type for a service object of type '<run_planner_configs-response>"
  "planner_msgs/run_planner_configsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'run_planner_configs-response)))
  "Returns string type for a service object of type 'run_planner_configs-response"
  "planner_msgs/run_planner_configsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<run_planner_configs-response>)))
  "Returns md5sum for a message object of type '<run_planner_configs-response>"
  "8ca5afb164ebfb318e4cc0e72e99b251")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'run_planner_configs-response)))
  "Returns md5sum for a message object of type 'run_planner_configs-response"
  "8ca5afb164ebfb318e4cc0e72e99b251")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<run_planner_configs-response>)))
  "Returns full string definition for message of type '<run_planner_configs-response>"
  (cl:format cl:nil "~%#Planned joint trajectory~%array2d_double joint_trajectory~%~%#Planned endeffector trajectory~%array2d_double ee_trajectory~%~%#Planning result~%bool success~%~%~%~%================================================================================~%MSG: planner_msgs/array2d_double~%array1d_double[] array2d_double~%================================================================================~%MSG: planner_msgs/array1d_double~%float64[] array1d_double~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'run_planner_configs-response)))
  "Returns full string definition for message of type 'run_planner_configs-response"
  (cl:format cl:nil "~%#Planned joint trajectory~%array2d_double joint_trajectory~%~%#Planned endeffector trajectory~%array2d_double ee_trajectory~%~%#Planning result~%bool success~%~%~%~%================================================================================~%MSG: planner_msgs/array2d_double~%array1d_double[] array2d_double~%================================================================================~%MSG: planner_msgs/array1d_double~%float64[] array1d_double~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <run_planner_configs-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_trajectory))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ee_trajectory))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <run_planner_configs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'run_planner_configs-response
    (cl:cons ':joint_trajectory (joint_trajectory msg))
    (cl:cons ':ee_trajectory (ee_trajectory msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'run_planner_configs)))
  'run_planner_configs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'run_planner_configs)))
  'run_planner_configs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'run_planner_configs)))
  "Returns string type for a service object of type '<run_planner_configs>"
  "planner_msgs/run_planner_configs")