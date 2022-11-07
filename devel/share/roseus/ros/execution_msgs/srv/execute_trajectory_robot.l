;; Auto-generated. Do not edit!


(when (boundp 'execution_msgs::execute_trajectory_robot)
  (if (not (find-package "EXECUTION_MSGS"))
    (make-package "EXECUTION_MSGS"))
  (shadow 'execute_trajectory_robot (find-package "EXECUTION_MSGS")))
(unless (find-package "EXECUTION_MSGS::EXECUTE_TRAJECTORY_ROBOT")
  (make-package "EXECUTION_MSGS::EXECUTE_TRAJECTORY_ROBOT"))
(unless (find-package "EXECUTION_MSGS::EXECUTE_TRAJECTORY_ROBOTREQUEST")
  (make-package "EXECUTION_MSGS::EXECUTE_TRAJECTORY_ROBOTREQUEST"))
(unless (find-package "EXECUTION_MSGS::EXECUTE_TRAJECTORY_ROBOTRESPONSE")
  (make-package "EXECUTION_MSGS::EXECUTE_TRAJECTORY_ROBOTRESPONSE"))

(in-package "ROS")





(defclass execution_msgs::execute_trajectory_robotRequest
  :super ros::object
  :slots (_planner_type _run_id ))

(defmethod execution_msgs::execute_trajectory_robotRequest
  (:init
   (&key
    ((:planner_type __planner_type) "")
    ((:run_id __run_id) "")
    )
   (send-super :init)
   (setq _planner_type (string __planner_type))
   (setq _run_id (string __run_id))
   self)
  (:planner_type
   (&optional __planner_type)
   (if __planner_type (setq _planner_type __planner_type)) _planner_type)
  (:run_id
   (&optional __run_id)
   (if __run_id (setq _run_id __run_id)) _run_id)
  (:serialization-length
   ()
   (+
    ;; string _planner_type
    4 (length _planner_type)
    ;; string _run_id
    4 (length _run_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _planner_type
       (write-long (length _planner_type) s) (princ _planner_type s)
     ;; string _run_id
       (write-long (length _run_id) s) (princ _run_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _planner_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planner_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _run_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _run_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass execution_msgs::execute_trajectory_robotResponse
  :super ros::object
  :slots (_execution_success ))

(defmethod execution_msgs::execute_trajectory_robotResponse
  (:init
   (&key
    ((:execution_success __execution_success) nil)
    )
   (send-super :init)
   (setq _execution_success __execution_success)
   self)
  (:execution_success
   (&optional (__execution_success :null))
   (if (not (eq __execution_success :null)) (setq _execution_success __execution_success)) _execution_success)
  (:serialization-length
   ()
   (+
    ;; bool _execution_success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _execution_success
       (if _execution_success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _execution_success
     (setq _execution_success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass execution_msgs::execute_trajectory_robot
  :super ros::object
  :slots ())

(setf (get execution_msgs::execute_trajectory_robot :md5sum-) "05acbdefe3087529e04386c5ff659953")
(setf (get execution_msgs::execute_trajectory_robot :datatype-) "execution_msgs/execute_trajectory_robot")
(setf (get execution_msgs::execute_trajectory_robot :request) execution_msgs::execute_trajectory_robotRequest)
(setf (get execution_msgs::execute_trajectory_robot :response) execution_msgs::execute_trajectory_robotResponse)

(defmethod execution_msgs::execute_trajectory_robotRequest
  (:response () (instance execution_msgs::execute_trajectory_robotResponse :init)))

(setf (get execution_msgs::execute_trajectory_robotRequest :md5sum-) "05acbdefe3087529e04386c5ff659953")
(setf (get execution_msgs::execute_trajectory_robotRequest :datatype-) "execution_msgs/execute_trajectory_robotRequest")
(setf (get execution_msgs::execute_trajectory_robotRequest :definition-)
      "#Type of planner (uni or bidirectional)
string planner_type

#ID of the planner run
string run_id

---

#Flag indicating whether trajectory execution has been successfull
bool execution_success

")

(setf (get execution_msgs::execute_trajectory_robotResponse :md5sum-) "05acbdefe3087529e04386c5ff659953")
(setf (get execution_msgs::execute_trajectory_robotResponse :datatype-) "execution_msgs/execute_trajectory_robotResponse")
(setf (get execution_msgs::execute_trajectory_robotResponse :definition-)
      "#Type of planner (uni or bidirectional)
string planner_type

#ID of the planner run
string run_id

---

#Flag indicating whether trajectory execution has been successfull
bool execution_success

")



(provide :execution_msgs/execute_trajectory_robot "05acbdefe3087529e04386c5ff659953")


