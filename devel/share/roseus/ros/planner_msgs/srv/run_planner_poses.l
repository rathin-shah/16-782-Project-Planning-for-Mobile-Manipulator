;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::run_planner_poses)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'run_planner_poses (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::RUN_PLANNER_POSES")
  (make-package "PLANNER_MSGS::RUN_PLANNER_POSES"))
(unless (find-package "PLANNER_MSGS::RUN_PLANNER_POSESREQUEST")
  (make-package "PLANNER_MSGS::RUN_PLANNER_POSESREQUEST"))
(unless (find-package "PLANNER_MSGS::RUN_PLANNER_POSESRESPONSE")
  (make-package "PLANNER_MSGS::RUN_PLANNER_POSESRESPONSE"))

(in-package "ROS")





(defclass planner_msgs::run_planner_posesRequest
  :super ros::object
  :slots (_start_ee_pose _constraint_vec_start_pose _goal_ee_pose _constraint_vec_goal_pose _target_coordinate_dev _planner_type _run_id _flag_iter_or_time _iter_or_time _tree_optimization _informed_sampling _show_tree ))

(defmethod planner_msgs::run_planner_posesRequest
  (:init
   (&key
    ((:start_ee_pose __start_ee_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:constraint_vec_start_pose __constraint_vec_start_pose) (make-array 0 :initial-element 0 :element-type :integer))
    ((:goal_ee_pose __goal_ee_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:constraint_vec_goal_pose __constraint_vec_goal_pose) (make-array 0 :initial-element 0 :element-type :integer))
    ((:target_coordinate_dev __target_coordinate_dev) (instance planner_msgs::array2d_double :init))
    ((:planner_type __planner_type) "")
    ((:run_id __run_id) 0)
    ((:flag_iter_or_time __flag_iter_or_time) 0)
    ((:iter_or_time __iter_or_time) 0.0)
    ((:tree_optimization __tree_optimization) nil)
    ((:informed_sampling __informed_sampling) nil)
    ((:show_tree __show_tree) nil)
    )
   (send-super :init)
   (setq _start_ee_pose __start_ee_pose)
   (setq _constraint_vec_start_pose __constraint_vec_start_pose)
   (setq _goal_ee_pose __goal_ee_pose)
   (setq _constraint_vec_goal_pose __constraint_vec_goal_pose)
   (setq _target_coordinate_dev __target_coordinate_dev)
   (setq _planner_type (string __planner_type))
   (setq _run_id (round __run_id))
   (setq _flag_iter_or_time (round __flag_iter_or_time))
   (setq _iter_or_time (float __iter_or_time))
   (setq _tree_optimization __tree_optimization)
   (setq _informed_sampling __informed_sampling)
   (setq _show_tree __show_tree)
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
  (:planner_type
   (&optional __planner_type)
   (if __planner_type (setq _planner_type __planner_type)) _planner_type)
  (:run_id
   (&optional __run_id)
   (if __run_id (setq _run_id __run_id)) _run_id)
  (:flag_iter_or_time
   (&optional __flag_iter_or_time)
   (if __flag_iter_or_time (setq _flag_iter_or_time __flag_iter_or_time)) _flag_iter_or_time)
  (:iter_or_time
   (&optional __iter_or_time)
   (if __iter_or_time (setq _iter_or_time __iter_or_time)) _iter_or_time)
  (:tree_optimization
   (&optional (__tree_optimization :null))
   (if (not (eq __tree_optimization :null)) (setq _tree_optimization __tree_optimization)) _tree_optimization)
  (:informed_sampling
   (&optional (__informed_sampling :null))
   (if (not (eq __informed_sampling :null)) (setq _informed_sampling __informed_sampling)) _informed_sampling)
  (:show_tree
   (&optional (__show_tree :null))
   (if (not (eq __show_tree :null)) (setq _show_tree __show_tree)) _show_tree)
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
    ;; string _planner_type
    4 (length _planner_type)
    ;; uint8 _run_id
    1
    ;; uint8 _flag_iter_or_time
    1
    ;; float64 _iter_or_time
    8
    ;; bool _tree_optimization
    1
    ;; bool _informed_sampling
    1
    ;; bool _show_tree
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
     ;; string _planner_type
       (write-long (length _planner_type) s) (princ _planner_type s)
     ;; uint8 _run_id
       (write-byte _run_id s)
     ;; uint8 _flag_iter_or_time
       (write-byte _flag_iter_or_time s)
     ;; float64 _iter_or_time
       (sys::poke _iter_or_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _tree_optimization
       (if _tree_optimization (write-byte -1 s) (write-byte 0 s))
     ;; bool _informed_sampling
       (if _informed_sampling (write-byte -1 s) (write-byte 0 s))
     ;; bool _show_tree
       (if _show_tree (write-byte -1 s) (write-byte 0 s))
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
   ;; string _planner_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planner_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _run_id
     (setq _run_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flag_iter_or_time
     (setq _flag_iter_or_time (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _iter_or_time
     (setq _iter_or_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _tree_optimization
     (setq _tree_optimization (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _informed_sampling
     (setq _informed_sampling (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _show_tree
     (setq _show_tree (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass planner_msgs::run_planner_posesResponse
  :super ros::object
  :slots (_joint_trajectory _ee_trajectory _success ))

(defmethod planner_msgs::run_planner_posesResponse
  (:init
   (&key
    ((:joint_trajectory __joint_trajectory) (instance planner_msgs::array2d_double :init))
    ((:ee_trajectory __ee_trajectory) (instance planner_msgs::array2d_double :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _joint_trajectory __joint_trajectory)
   (setq _ee_trajectory __ee_trajectory)
   (setq _success __success)
   self)
  (:joint_trajectory
   (&rest __joint_trajectory)
   (if (keywordp (car __joint_trajectory))
       (send* _joint_trajectory __joint_trajectory)
     (progn
       (if __joint_trajectory (setq _joint_trajectory (car __joint_trajectory)))
       _joint_trajectory)))
  (:ee_trajectory
   (&rest __ee_trajectory)
   (if (keywordp (car __ee_trajectory))
       (send* _ee_trajectory __ee_trajectory)
     (progn
       (if __ee_trajectory (setq _ee_trajectory (car __ee_trajectory)))
       _ee_trajectory)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; planner_msgs/array2d_double _joint_trajectory
    (send _joint_trajectory :serialization-length)
    ;; planner_msgs/array2d_double _ee_trajectory
    (send _ee_trajectory :serialization-length)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planner_msgs/array2d_double _joint_trajectory
       (send _joint_trajectory :serialize s)
     ;; planner_msgs/array2d_double _ee_trajectory
       (send _ee_trajectory :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planner_msgs/array2d_double _joint_trajectory
     (send _joint_trajectory :deserialize buf ptr-) (incf ptr- (send _joint_trajectory :serialization-length))
   ;; planner_msgs/array2d_double _ee_trajectory
     (send _ee_trajectory :deserialize buf ptr-) (incf ptr- (send _ee_trajectory :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass planner_msgs::run_planner_poses
  :super ros::object
  :slots ())

(setf (get planner_msgs::run_planner_poses :md5sum-) "a6cba430226c7744dd14ae64a4634010")
(setf (get planner_msgs::run_planner_poses :datatype-) "planner_msgs/run_planner_poses")
(setf (get planner_msgs::run_planner_poses :request) planner_msgs::run_planner_posesRequest)
(setf (get planner_msgs::run_planner_poses :response) planner_msgs::run_planner_posesResponse)

(defmethod planner_msgs::run_planner_posesRequest
  (:response () (instance planner_msgs::run_planner_posesResponse :init)))

(setf (get planner_msgs::run_planner_posesRequest :md5sum-) "a6cba430226c7744dd14ae64a4634010")
(setf (get planner_msgs::run_planner_posesRequest :datatype-) "planner_msgs/run_planner_posesRequest")
(setf (get planner_msgs::run_planner_posesRequest :definition-)
      "
#Start EE pose
float64[] start_ee_pose
int32[] constraint_vec_start_pose

#Goal EE pose
float64[] goal_ee_pose
int32[] constraint_vec_goal_pose

#Permitted displacement of EE w.r.t target frame
array2d_double target_coordinate_dev

#Type of planner (uni or bidirectional)
string planner_type

#ID of the planner run
uint8 run_id

#Flag indicating whether maximum number of iterations of runtime is used
uint8 flag_iter_or_time

#Max. number of iterations / or max. runtime 
float64 iter_or_time

#Flag indicating whether tree optimization is used
bool tree_optimization

#Flag indicating whether informed sampling is used
bool informed_sampling

#Flag to visualize planning process
bool show_tree


================================================================================
MSG: planner_msgs/array2d_double
array1d_double[] array2d_double
================================================================================
MSG: planner_msgs/array1d_double
---

#Planned joint trajectory
array2d_double joint_trajectory

#Planned endeffector trajectory
array2d_double ee_trajectory

#Planning result
bool success



================================================================================
MSG: planner_msgs/array2d_double
array1d_double[] array2d_double
================================================================================
MSG: planner_msgs/array1d_double
")

(setf (get planner_msgs::run_planner_posesResponse :md5sum-) "a6cba430226c7744dd14ae64a4634010")
(setf (get planner_msgs::run_planner_posesResponse :datatype-) "planner_msgs/run_planner_posesResponse")
(setf (get planner_msgs::run_planner_posesResponse :definition-)
      "
#Start EE pose
float64[] start_ee_pose
int32[] constraint_vec_start_pose

#Goal EE pose
float64[] goal_ee_pose
int32[] constraint_vec_goal_pose

#Permitted displacement of EE w.r.t target frame
array2d_double target_coordinate_dev

#Type of planner (uni or bidirectional)
string planner_type

#ID of the planner run
uint8 run_id

#Flag indicating whether maximum number of iterations of runtime is used
uint8 flag_iter_or_time

#Max. number of iterations / or max. runtime 
float64 iter_or_time

#Flag indicating whether tree optimization is used
bool tree_optimization

#Flag indicating whether informed sampling is used
bool informed_sampling

#Flag to visualize planning process
bool show_tree


================================================================================
MSG: planner_msgs/array2d_double
array1d_double[] array2d_double
================================================================================
MSG: planner_msgs/array1d_double
---

#Planned joint trajectory
array2d_double joint_trajectory

#Planned endeffector trajectory
array2d_double ee_trajectory

#Planning result
bool success



================================================================================
MSG: planner_msgs/array2d_double
array1d_double[] array2d_double
================================================================================
MSG: planner_msgs/array1d_double
")



(provide :planner_msgs/run_planner_poses "a6cba430226c7744dd14ae64a4634010")


