;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::reset_planner_to_default)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'reset_planner_to_default (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::RESET_PLANNER_TO_DEFAULT")
  (make-package "PLANNER_MSGS::RESET_PLANNER_TO_DEFAULT"))
(unless (find-package "PLANNER_MSGS::RESET_PLANNER_TO_DEFAULTREQUEST")
  (make-package "PLANNER_MSGS::RESET_PLANNER_TO_DEFAULTREQUEST"))
(unless (find-package "PLANNER_MSGS::RESET_PLANNER_TO_DEFAULTRESPONSE")
  (make-package "PLANNER_MSGS::RESET_PLANNER_TO_DEFAULTRESPONSE"))

(in-package "ROS")





(defclass planner_msgs::reset_planner_to_defaultRequest
  :super ros::object
  :slots ())

(defmethod planner_msgs::reset_planner_to_defaultRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass planner_msgs::reset_planner_to_defaultResponse
  :super ros::object
  :slots (_reinitialized ))

(defmethod planner_msgs::reset_planner_to_defaultResponse
  (:init
   (&key
    ((:reinitialized __reinitialized) nil)
    )
   (send-super :init)
   (setq _reinitialized __reinitialized)
   self)
  (:reinitialized
   (&optional (__reinitialized :null))
   (if (not (eq __reinitialized :null)) (setq _reinitialized __reinitialized)) _reinitialized)
  (:serialization-length
   ()
   (+
    ;; bool _reinitialized
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reinitialized
       (if _reinitialized (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reinitialized
     (setq _reinitialized (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass planner_msgs::reset_planner_to_default
  :super ros::object
  :slots ())

(setf (get planner_msgs::reset_planner_to_default :md5sum-) "0667a9bbb8555a2127e81724eb62d266")
(setf (get planner_msgs::reset_planner_to_default :datatype-) "planner_msgs/reset_planner_to_default")
(setf (get planner_msgs::reset_planner_to_default :request) planner_msgs::reset_planner_to_defaultRequest)
(setf (get planner_msgs::reset_planner_to_default :response) planner_msgs::reset_planner_to_defaultResponse)

(defmethod planner_msgs::reset_planner_to_defaultRequest
  (:response () (instance planner_msgs::reset_planner_to_defaultResponse :init)))

(setf (get planner_msgs::reset_planner_to_defaultRequest :md5sum-) "0667a9bbb8555a2127e81724eb62d266")
(setf (get planner_msgs::reset_planner_to_defaultRequest :datatype-) "planner_msgs/reset_planner_to_defaultRequest")
(setf (get planner_msgs::reset_planner_to_defaultRequest :definition-)
      "
---

bool reinitialized
")

(setf (get planner_msgs::reset_planner_to_defaultResponse :md5sum-) "0667a9bbb8555a2127e81724eb62d266")
(setf (get planner_msgs::reset_planner_to_defaultResponse :datatype-) "planner_msgs/reset_planner_to_defaultResponse")
(setf (get planner_msgs::reset_planner_to_defaultResponse :definition-)
      "
---

bool reinitialized
")



(provide :planner_msgs/reset_planner_to_default "0667a9bbb8555a2127e81724eb62d266")


