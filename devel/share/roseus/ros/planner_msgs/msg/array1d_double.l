;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::array1d_double)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'array1d_double (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::ARRAY1D_DOUBLE")
  (make-package "PLANNER_MSGS::ARRAY1D_DOUBLE"))

(in-package "ROS")
;;//! \htmlinclude array1d_double.msg.html


(defclass planner_msgs::array1d_double
  :super ros::object
  :slots (_array1d_double ))

(defmethod planner_msgs::array1d_double
  (:init
   (&key
    ((:array1d_double __array1d_double) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _array1d_double __array1d_double)
   self)
  (:array1d_double
   (&optional __array1d_double)
   (if __array1d_double (setq _array1d_double __array1d_double)) _array1d_double)
  (:serialization-length
   ()
   (+
    ;; float64[] _array1d_double
    (* 8    (length _array1d_double)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _array1d_double
     (write-long (length _array1d_double) s)
     (dotimes (i (length _array1d_double))
       (sys::poke (elt _array1d_double i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _array1d_double
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _array1d_double (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _array1d_double i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get planner_msgs::array1d_double :md5sum-) "053e2cce4d87337b8c6a7306fb74d968")
(setf (get planner_msgs::array1d_double :datatype-) "planner_msgs/array1d_double")
(setf (get planner_msgs::array1d_double :definition-)
      "float64[] array1d_double
")



(provide :planner_msgs/array1d_double "053e2cce4d87337b8c6a7306fb74d968")


