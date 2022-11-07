; Auto-generated. Do not edit!


(cl:in-package planner_msgs-srv)


;//! \htmlinclude generate_start_goal_config-request.msg.html

(cl:defclass <generate_start_goal_config-request> (roslisp-msg-protocol:ros-message)
  ((start_ee_pose
    :reader start_ee_pose
    :initarg :start_ee_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (constraint_vec_start_pose
    :reader constraint_vec_start_pose
    :initarg :constraint_vec_start_pose
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (goal_ee_pose
    :reader goal_ee_pose
    :initarg :goal_ee_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (constraint_vec_goal_pose
    :reader constraint_vec_goal_pose
    :initarg :constraint_vec_goal_pose
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (target_coordinate_dev
    :reader target_coordinate_dev
    :initarg :target_coordinate_dev
    :type planner_msgs-msg:array2d_double
    :initform (cl:make-instance 'planner_msgs-msg:array2d_double))
   (show_motion
    :reader show_motion
    :initarg :show_motion
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass generate_start_goal_config-request (<generate_start_goal_config-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <generate_start_goal_config-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'generate_start_goal_config-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-srv:<generate_start_goal_config-request> is deprecated: use planner_msgs-srv:generate_start_goal_config-request instead.")))

(cl:ensure-generic-function 'start_ee_pose-val :lambda-list '(m))
(cl:defmethod start_ee_pose-val ((m <generate_start_goal_config-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:start_ee_pose-val is deprecated.  Use planner_msgs-srv:start_ee_pose instead.")
  (start_ee_pose m))

(cl:ensure-generic-function 'constraint_vec_start_pose-val :lambda-list '(m))
(cl:defmethod constraint_vec_start_pose-val ((m <generate_start_goal_config-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:constraint_vec_start_pose-val is deprecated.  Use planner_msgs-srv:constraint_vec_start_pose instead.")
  (constraint_vec_start_pose m))

(cl:ensure-generic-function 'goal_ee_pose-val :lambda-list '(m))
(cl:defmethod goal_ee_pose-val ((m <generate_start_goal_config-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:goal_ee_pose-val is deprecated.  Use planner_msgs-srv:goal_ee_pose instead.")
  (goal_ee_pose m))

(cl:ensure-generic-function 'constraint_vec_goal_pose-val :lambda-list '(m))
(cl:defmethod constraint_vec_goal_pose-val ((m <generate_start_goal_config-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:constraint_vec_goal_pose-val is deprecated.  Use planner_msgs-srv:constraint_vec_goal_pose instead.")
  (constraint_vec_goal_pose m))

(cl:ensure-generic-function 'target_coordinate_dev-val :lambda-list '(m))
(cl:defmethod target_coordinate_dev-val ((m <generate_start_goal_config-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:target_coordinate_dev-val is deprecated.  Use planner_msgs-srv:target_coordinate_dev instead.")
  (target_coordinate_dev m))

(cl:ensure-generic-function 'show_motion-val :lambda-list '(m))
(cl:defmethod show_motion-val ((m <generate_start_goal_config-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:show_motion-val is deprecated.  Use planner_msgs-srv:show_motion instead.")
  (show_motion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <generate_start_goal_config-request>) ostream)
  "Serializes a message object of type '<generate_start_goal_config-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'start_ee_pose))))
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
   (cl:slot-value msg 'start_ee_pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'constraint_vec_start_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'constraint_vec_start_pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_ee_pose))))
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
   (cl:slot-value msg 'goal_ee_pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'constraint_vec_goal_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'constraint_vec_goal_pose))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_coordinate_dev) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'show_motion) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <generate_start_goal_config-request>) istream)
  "Deserializes a message object of type '<generate_start_goal_config-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'start_ee_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'start_ee_pose)))
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
  (cl:setf (cl:slot-value msg 'constraint_vec_start_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'constraint_vec_start_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_ee_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_ee_pose)))
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
  (cl:setf (cl:slot-value msg 'constraint_vec_goal_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'constraint_vec_goal_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_coordinate_dev) istream)
    (cl:setf (cl:slot-value msg 'show_motion) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<generate_start_goal_config-request>)))
  "Returns string type for a service object of type '<generate_start_goal_config-request>"
  "planner_msgs/generate_start_goal_configRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'generate_start_goal_config-request)))
  "Returns string type for a service object of type 'generate_start_goal_config-request"
  "planner_msgs/generate_start_goal_configRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<generate_start_goal_config-request>)))
  "Returns md5sum for a message object of type '<generate_start_goal_config-request>"
  "016b486bf23e79f4112223da75806f26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'generate_start_goal_config-request)))
  "Returns md5sum for a message object of type 'generate_start_goal_config-request"
  "016b486bf23e79f4112223da75806f26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<generate_start_goal_config-request>)))
  "Returns full string definition for message of type '<generate_start_goal_config-request>"
  (cl:format cl:nil "~%#Start EE pose~%float64[] start_ee_pose~%int32[] constraint_vec_start_pose~%~%#Goal EE pose~%float64[] goal_ee_pose~%int32[] constraint_vec_goal_pose~%~%#Permitted displacement of EE w.r.t target frame~%array2d_double target_coordinate_dev~%~%#Flag to show config generation in rviz~%bool show_motion~%~%~%================================================================================~%MSG: planner_msgs/array2d_double~%array1d_double[] array2d_double~%================================================================================~%MSG: planner_msgs/array1d_double~%float64[] array1d_double~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'generate_start_goal_config-request)))
  "Returns full string definition for message of type 'generate_start_goal_config-request"
  (cl:format cl:nil "~%#Start EE pose~%float64[] start_ee_pose~%int32[] constraint_vec_start_pose~%~%#Goal EE pose~%float64[] goal_ee_pose~%int32[] constraint_vec_goal_pose~%~%#Permitted displacement of EE w.r.t target frame~%array2d_double target_coordinate_dev~%~%#Flag to show config generation in rviz~%bool show_motion~%~%~%================================================================================~%MSG: planner_msgs/array2d_double~%array1d_double[] array2d_double~%================================================================================~%MSG: planner_msgs/array1d_double~%float64[] array1d_double~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <generate_start_goal_config-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_ee_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'constraint_vec_start_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_ee_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'constraint_vec_goal_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_coordinate_dev))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <generate_start_goal_config-request>))
  "Converts a ROS message object to a list"
  (cl:list 'generate_start_goal_config-request
    (cl:cons ':start_ee_pose (start_ee_pose msg))
    (cl:cons ':constraint_vec_start_pose (constraint_vec_start_pose msg))
    (cl:cons ':goal_ee_pose (goal_ee_pose msg))
    (cl:cons ':constraint_vec_goal_pose (constraint_vec_goal_pose msg))
    (cl:cons ':target_coordinate_dev (target_coordinate_dev msg))
    (cl:cons ':show_motion (show_motion msg))
))
;//! \htmlinclude generate_start_goal_config-response.msg.html

(cl:defclass <generate_start_goal_config-response> (roslisp-msg-protocol:ros-message)
  ((start_conf
    :reader start_conf
    :initarg :start_conf
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (goal_conf
    :reader goal_conf
    :initarg :goal_conf
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass generate_start_goal_config-response (<generate_start_goal_config-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <generate_start_goal_config-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'generate_start_goal_config-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-srv:<generate_start_goal_config-response> is deprecated: use planner_msgs-srv:generate_start_goal_config-response instead.")))

(cl:ensure-generic-function 'start_conf-val :lambda-list '(m))
(cl:defmethod start_conf-val ((m <generate_start_goal_config-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:start_conf-val is deprecated.  Use planner_msgs-srv:start_conf instead.")
  (start_conf m))

(cl:ensure-generic-function 'goal_conf-val :lambda-list '(m))
(cl:defmethod goal_conf-val ((m <generate_start_goal_config-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:goal_conf-val is deprecated.  Use planner_msgs-srv:goal_conf instead.")
  (goal_conf m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <generate_start_goal_config-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-srv:success-val is deprecated.  Use planner_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <generate_start_goal_config-response>) ostream)
  "Serializes a message object of type '<generate_start_goal_config-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'start_conf))))
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
   (cl:slot-value msg 'start_conf))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_conf))))
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
   (cl:slot-value msg 'goal_conf))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <generate_start_goal_config-response>) istream)
  "Deserializes a message object of type '<generate_start_goal_config-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'start_conf) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'start_conf)))
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
  (cl:setf (cl:slot-value msg 'goal_conf) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_conf)))
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
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<generate_start_goal_config-response>)))
  "Returns string type for a service object of type '<generate_start_goal_config-response>"
  "planner_msgs/generate_start_goal_configResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'generate_start_goal_config-response)))
  "Returns string type for a service object of type 'generate_start_goal_config-response"
  "planner_msgs/generate_start_goal_configResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<generate_start_goal_config-response>)))
  "Returns md5sum for a message object of type '<generate_start_goal_config-response>"
  "016b486bf23e79f4112223da75806f26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'generate_start_goal_config-response)))
  "Returns md5sum for a message object of type 'generate_start_goal_config-response"
  "016b486bf23e79f4112223da75806f26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<generate_start_goal_config-response>)))
  "Returns full string definition for message of type '<generate_start_goal_config-response>"
  (cl:format cl:nil "~%#Start and Goal Config~%float64[] start_conf~%float64[] goal_conf~%~%#Result of Start and Goal Config Generation~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'generate_start_goal_config-response)))
  "Returns full string definition for message of type 'generate_start_goal_config-response"
  (cl:format cl:nil "~%#Start and Goal Config~%float64[] start_conf~%float64[] goal_conf~%~%#Result of Start and Goal Config Generation~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <generate_start_goal_config-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_conf) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_conf) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <generate_start_goal_config-response>))
  "Converts a ROS message object to a list"
  (cl:list 'generate_start_goal_config-response
    (cl:cons ':start_conf (start_conf msg))
    (cl:cons ':goal_conf (goal_conf msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'generate_start_goal_config)))
  'generate_start_goal_config-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'generate_start_goal_config)))
  'generate_start_goal_config-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'generate_start_goal_config)))
  "Returns string type for a service object of type '<generate_start_goal_config>"
  "planner_msgs/generate_start_goal_config")