;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::planning_scene_info)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'planning_scene_info (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::PLANNING_SCENE_INFO")
  (make-package "PLANNER_MSGS::PLANNING_SCENE_INFO"))
(unless (find-package "PLANNER_MSGS::PLANNING_SCENE_INFOREQUEST")
  (make-package "PLANNER_MSGS::PLANNING_SCENE_INFOREQUEST"))
(unless (find-package "PLANNER_MSGS::PLANNING_SCENE_INFORESPONSE")
  (make-package "PLANNER_MSGS::PLANNING_SCENE_INFORESPONSE"))

(in-package "ROS")





(defclass planner_msgs::planning_scene_infoRequest
  :super ros::object
  :slots (_env_size_x _env_size_y _show_environment_borders ))

(defmethod planner_msgs::planning_scene_infoRequest
  (:init
   (&key
    ((:env_size_x __env_size_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:env_size_y __env_size_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:show_environment_borders __show_environment_borders) nil)
    )
   (send-super :init)
   (setq _env_size_x __env_size_x)
   (setq _env_size_y __env_size_y)
   (setq _show_environment_borders __show_environment_borders)
   self)
  (:env_size_x
   (&optional __env_size_x)
   (if __env_size_x (setq _env_size_x __env_size_x)) _env_size_x)
  (:env_size_y
   (&optional __env_size_y)
   (if __env_size_y (setq _env_size_y __env_size_y)) _env_size_y)
  (:show_environment_borders
   (&optional (__show_environment_borders :null))
   (if (not (eq __show_environment_borders :null)) (setq _show_environment_borders __show_environment_borders)) _show_environment_borders)
  (:serialization-length
   ()
   (+
    ;; float64[] _env_size_x
    (* 8    (length _env_size_x)) 4
    ;; float64[] _env_size_y
    (* 8    (length _env_size_y)) 4
    ;; bool _show_environment_borders
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _env_size_x
     (write-long (length _env_size_x) s)
     (dotimes (i (length _env_size_x))
       (sys::poke (elt _env_size_x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _env_size_y
     (write-long (length _env_size_y) s)
     (dotimes (i (length _env_size_y))
       (sys::poke (elt _env_size_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _show_environment_borders
       (if _show_environment_borders (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _env_size_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _env_size_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _env_size_x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _env_size_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _env_size_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _env_size_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _show_environment_borders
     (setq _show_environment_borders (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass planner_msgs::planning_scene_infoResponse
  :super ros::object
  :slots (_ok ))

(defmethod planner_msgs::planning_scene_infoResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional (__ok :null))
   (if (not (eq __ok :null)) (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass planner_msgs::planning_scene_info
  :super ros::object
  :slots ())

(setf (get planner_msgs::planning_scene_info :md5sum-) "0f90a5fd7094d6c5f8a02858a00e3072")
(setf (get planner_msgs::planning_scene_info :datatype-) "planner_msgs/planning_scene_info")
(setf (get planner_msgs::planning_scene_info :request) planner_msgs::planning_scene_infoRequest)
(setf (get planner_msgs::planning_scene_info :response) planner_msgs::planning_scene_infoResponse)

(defmethod planner_msgs::planning_scene_infoRequest
  (:response () (instance planner_msgs::planning_scene_infoResponse :init)))

(setf (get planner_msgs::planning_scene_infoRequest :md5sum-) "0f90a5fd7094d6c5f8a02858a00e3072")
(setf (get planner_msgs::planning_scene_infoRequest :datatype-) "planner_msgs/planning_scene_infoRequest")
(setf (get planner_msgs::planning_scene_infoRequest :definition-)
      "float64[] env_size_x
float64[] env_size_y
bool show_environment_borders

---

bool ok
")

(setf (get planner_msgs::planning_scene_infoResponse :md5sum-) "0f90a5fd7094d6c5f8a02858a00e3072")
(setf (get planner_msgs::planning_scene_infoResponse :datatype-) "planner_msgs/planning_scene_infoResponse")
(setf (get planner_msgs::planning_scene_infoResponse :definition-)
      "float64[] env_size_x
float64[] env_size_y
bool show_environment_borders

---

bool ok
")



(provide :planner_msgs/planning_scene_info "0f90a5fd7094d6c5f8a02858a00e3072")


