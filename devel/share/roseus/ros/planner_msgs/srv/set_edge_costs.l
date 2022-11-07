;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::set_edge_costs)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'set_edge_costs (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::SET_EDGE_COSTS")
  (make-package "PLANNER_MSGS::SET_EDGE_COSTS"))
(unless (find-package "PLANNER_MSGS::SET_EDGE_COSTSREQUEST")
  (make-package "PLANNER_MSGS::SET_EDGE_COSTSREQUEST"))
(unless (find-package "PLANNER_MSGS::SET_EDGE_COSTSRESPONSE")
  (make-package "PLANNER_MSGS::SET_EDGE_COSTSRESPONSE"))

(in-package "ROS")





(defclass planner_msgs::set_edge_costsRequest
  :super ros::object
  :slots (_edge_costs ))

(defmethod planner_msgs::set_edge_costsRequest
  (:init
   (&key
    ((:edge_costs __edge_costs) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _edge_costs __edge_costs)
   self)
  (:edge_costs
   (&optional __edge_costs)
   (if __edge_costs (setq _edge_costs __edge_costs)) _edge_costs)
  (:serialization-length
   ()
   (+
    ;; float64[] _edge_costs
    (* 8    (length _edge_costs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _edge_costs
     (write-long (length _edge_costs) s)
     (dotimes (i (length _edge_costs))
       (sys::poke (elt _edge_costs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _edge_costs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _edge_costs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _edge_costs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass planner_msgs::set_edge_costsResponse
  :super ros::object
  :slots (_ok ))

(defmethod planner_msgs::set_edge_costsResponse
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

(defclass planner_msgs::set_edge_costs
  :super ros::object
  :slots ())

(setf (get planner_msgs::set_edge_costs :md5sum-) "3cebc05ddbc84f67732803850c09e6e4")
(setf (get planner_msgs::set_edge_costs :datatype-) "planner_msgs/set_edge_costs")
(setf (get planner_msgs::set_edge_costs :request) planner_msgs::set_edge_costsRequest)
(setf (get planner_msgs::set_edge_costs :response) planner_msgs::set_edge_costsResponse)

(defmethod planner_msgs::set_edge_costsRequest
  (:response () (instance planner_msgs::set_edge_costsResponse :init)))

(setf (get planner_msgs::set_edge_costsRequest :md5sum-) "3cebc05ddbc84f67732803850c09e6e4")
(setf (get planner_msgs::set_edge_costsRequest :datatype-) "planner_msgs/set_edge_costsRequest")
(setf (get planner_msgs::set_edge_costsRequest :definition-)
      "#Edge costs for c-space coordinates
float64[] edge_costs

---

bool ok
")

(setf (get planner_msgs::set_edge_costsResponse :md5sum-) "3cebc05ddbc84f67732803850c09e6e4")
(setf (get planner_msgs::set_edge_costsResponse :datatype-) "planner_msgs/set_edge_costsResponse")
(setf (get planner_msgs::set_edge_costsResponse :definition-)
      "#Edge costs for c-space coordinates
float64[] edge_costs

---

bool ok
")



(provide :planner_msgs/set_edge_costs "3cebc05ddbc84f67732803850c09e6e4")


