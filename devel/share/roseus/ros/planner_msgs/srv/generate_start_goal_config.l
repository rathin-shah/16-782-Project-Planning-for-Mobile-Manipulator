;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::generate_start_goal_config)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'generate_start_goal_config (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::GENERATE_START_GOAL_CONFIG")
  (make-package "PLANNER_MSGS::GENERATE_START_GOAL_CONFIG"))
(unless (find-package "PLANNER_MSGS::GENERATE_START_GOAL_CONFIGREQUEST")
  (make-package "PLANNER_MSGS::GENERATE_START_GOAL_CONFIGREQUEST"))
(unless (find-package "PLANNER_MSGS::GENERATE_START_GOAL_CONFIGRESPONSE")
  (make-package "PLANNER_MSGS::GENERATE_START_GOAL_CONFIGRESPONSE"))

(in-package "ROS")





(defclass planner_msgs::generate_start_goal_configRequest
  :super ros::object
  :slots (_start_ee_pose _constraint_vec_start_pose _goal_ee_pose _constraint_vec_goal_pose _target_coordinate_dev _show_motion ))

(defmethod planner_msgs::generate_start_goal_configRequest
  (:init
   (&key
    ((:start_ee_pose __start_ee_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:constraint_vec_start_pose __constraint_vec_start_pose) (make-array 0 :initial-element 0 :element-type :integer))
    ((:goal_ee_pose __goal_ee_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:constraint_vec_goal_pose __constraint_vec_goal_pose) (make-array 0 :initial-element 0 :element-type :integer))
    ((:target_coordinate_dev __target_coordinate_dev) (instance planner_msgs::array2d_double :init))
    ((:show_motion __show_motion) nil)
    )
   (send-super :init)
   (setq _start_ee_pose __start_ee_pose)
   (setq _constraint_vec_start_pose __constraint_vec_start_pose)
   (setq _goal_ee_pose __goal_ee_pose)
   (setq _constraint_vec_goal_pose __constraint_vec_goal_pose)
   (setq _target_coordinate_dev __target_coordinate_dev)
   (setq _show_motion __show_motion)
   self)
  (:start_ee_pose
   (&optional __start_ee_pose)
   (if __start_ee_pose (setq _start_ee_pose __start_ee_pose)) _start_ee_pose)
  (:constraint_vec_start_pose
   (&optional __constraint_vec_start_pose)
   (if __constraint_vec_start_pose (setq _constraint_vec_start_pose __constraint_vec_start_pose)) _constraint_vec_start_pose)
  (:goal_ee_pose
   (&optional __goal_ee_pose)
   (if __goal_ee_pose (setq _goal_ee_pose __goal_ee_pose)) _goal_ee_pose)
  (:constraint_vec_goal_pose
   (&optional __constraint_vec_goal_pose)
   (if __constraint_vec_goal_pose (setq _constraint_vec_goal_pose __constraint_vec_goal_pose)) _constraint_vec_goal_pose)
  (:target_coordinate_dev
   (&rest __target_coordinate_dev)
   (if (keywordp (car __target_coordinate_dev))
       (send* _target_coordinate_dev __target_coordinate_dev)
     (progn
       (if __target_coordinate_dev (setq _target_coordinate_dev (car __target_coordinate_dev)))
       _target_coordinate_dev)))
  (:show_motion
   (&optional (__show_motion :null))
   (if (not (eq __show_motion :null)) (setq _show_motion __show_motion)) _show_motion)
  (:serialization-length
   ()
   (+
    ;; float64[] _start_ee_pose
    (* 8    (length _start_ee_pose)) 4
    ;; int32[] _constraint_vec_start_pose
    (* 4    (length _constraint_vec_start_pose)) 4
    ;; float64[] _goal_ee_pose
    (* 8    (length _goal_ee_pose)) 4
    ;; int32[] _constraint_vec_goal_pose
    (* 4    (length _constraint_vec_goal_pose)) 4
    ;; planner_msgs/array2d_double _target_coordinate_dev
    (send _target_coordinate_dev :serialization-length)
    ;; bool _show_motion
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _start_ee_pose
     (write-long (length _start_ee_pose) s)
     (dotimes (i (length _start_ee_pose))
       (sys::poke (elt _start_ee_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _constraint_vec_start_pose
     (write-long (length _constraint_vec_start_pose) s)
     (dotimes (i (length _constraint_vec_start_pose))
       (write-long (elt _constraint_vec_start_pose i) s)
       )
     ;; float64[] _goal_ee_pose
     (write-long (length _goal_ee_pose) s)
     (dotimes (i (length _goal_ee_pose))
       (sys::poke (elt _goal_ee_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _constraint_vec_goal_pose
     (write-long (length _constraint_vec_goal_pose) s)
     (dotimes (i (length _constraint_vec_goal_pose))
       (write-long (elt _constraint_vec_goal_pose i) s)
       )
     ;; planner_msgs/array2d_double _target_coordinate_dev
       (send _target_coordinate_dev :serialize s)
     ;; bool _show_motion
       (if _show_motion (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _start_ee_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_ee_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _start_ee_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _constraint_vec_start_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _constraint_vec_start_pose (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _constraint_vec_start_pose i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _goal_ee_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_ee_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_ee_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _constraint_vec_goal_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _constraint_vec_goal_pose (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _constraint_vec_goal_pose i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; planner_msgs/array2d_double _target_coordinate_dev
     (send _target_coordinate_dev :deserialize buf ptr-) (incf ptr- (send _target_coordinate_dev :serialization-length))
   ;; bool _show_motion
     (setq _show_motion (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass planner_msgs::generate_start_goal_configResponse
  :super ros::object
  :slots (_start_conf _goal_conf _success ))

(defmethod planner_msgs::generate_start_goal_configResponse
  (:init
   (&key
    ((:start_conf __start_conf) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:goal_conf __goal_conf) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _start_conf __start_conf)
   (setq _goal_conf __goal_conf)
   (setq _success __success)
   self)
  (:start_conf
   (&optional __start_conf)
   (if __start_conf (setq _start_conf __start_conf)) _start_conf)
  (:goal_conf
   (&optional __goal_conf)
   (if __goal_conf (setq _goal_conf __goal_conf)) _goal_conf)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64[] _start_conf
    (* 8    (length _start_conf)) 4
    ;; float64[] _goal_conf
    (* 8    (length _goal_conf)) 4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _start_conf
     (write-long (length _start_conf) s)
     (dotimes (i (length _start_conf))
       (sys::poke (elt _start_conf i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _goal_conf
     (write-long (length _goal_conf) s)
     (dotimes (i (length _goal_conf))
       (sys::poke (elt _goal_conf i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _start_conf
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_conf (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _start_conf i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _goal_conf
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_conf (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_conf i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass planner_msgs::generate_start_goal_config
  :super ros::object
  :slots ())

(setf (get planner_msgs::generate_start_goal_config :md5sum-) "016b486bf23e79f4112223da75806f26")
(setf (get planner_msgs::generate_start_goal_config :datatype-) "planner_msgs/generate_start_goal_config")
(setf (get planner_msgs::generate_start_goal_config :request) planner_msgs::generate_start_goal_configRequest)
(setf (get planner_msgs::generate_start_goal_config :response) planner_msgs::generate_start_goal_configResponse)

(defmethod planner_msgs::generate_start_goal_configRequest
  (:response () (instance planner_msgs::generate_start_goal_configResponse :init)))

(setf (get planner_msgs::generate_start_goal_configRequest :md5sum-) "016b486bf23e79f4112223da75806f26")
(setf (get planner_msgs::generate_start_goal_configRequest :datatype-) "planner_msgs/generate_start_goal_configRequest")
(setf (get planner_msgs::generate_start_goal_configRequest :definition-)
      "
#Start EE pose
float64[] start_ee_pose
int32[] constraint_vec_start_pose

#Goal EE pose
float64[] goal_ee_pose
int32[] constraint_vec_goal_pose

#Permitted displacement of EE w.r.t target frame
array2d_double target_coordinate_dev

#Flag to show config generation in rviz
bool show_motion


================================================================================
MSG: planner_msgs/array2d_double
array1d_double[] array2d_double
================================================================================
MSG: planner_msgs/array1d_double
---

#Start and Goal Config
float64[] start_conf
float64[] goal_conf

#Result of Start and Goal Config Generation
bool success
")

(setf (get planner_msgs::generate_start_goal_configResponse :md5sum-) "016b486bf23e79f4112223da75806f26")
(setf (get planner_msgs::generate_start_goal_configResponse :datatype-) "planner_msgs/generate_start_goal_configResponse")
(setf (get planner_msgs::generate_start_goal_configResponse :definition-)
      "
#Start EE pose
float64[] start_ee_pose
int32[] constraint_vec_start_pose

#Goal EE pose
float64[] goal_ee_pose
int32[] constraint_vec_goal_pose

#Permitted displacement of EE w.r.t target frame
array2d_double target_coordinate_dev

#Flag to show config generation in rviz
bool show_motion


================================================================================
MSG: planner_msgs/array2d_double
array1d_double[] array2d_double
================================================================================
MSG: planner_msgs/array1d_double
---

#Start and Goal Config
float64[] start_conf
float64[] goal_conf

#Result of Start and Goal Config Generation
bool success
")



(provide :planner_msgs/generate_start_goal_config "016b486bf23e79f4112223da75806f26")


