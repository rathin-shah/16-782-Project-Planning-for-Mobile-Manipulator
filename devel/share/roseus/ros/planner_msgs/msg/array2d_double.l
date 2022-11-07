;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::array2d_double)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'array2d_double (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::ARRAY2D_DOUBLE")
  (make-package "PLANNER_MSGS::ARRAY2D_DOUBLE"))

(in-package "ROS")
;;//! \htmlinclude array2d_double.msg.html


(defclass planner_msgs::array2d_double
  :super ros::object
  :slots (_array2d_double ))

(defmethod planner_msgs::array2d_double
  (:init
   (&key
    ((:array2d_double __array2d_double) ())
    )
   (send-super :init)
   (setq _array2d_double __array2d_double)
   self)
  (:array2d_double
   (&rest __array2d_double)
   (if (keywordp (car __array2d_double))
       (send* _array2d_double __array2d_double)
     (progn
       (if __array2d_double (setq _array2d_double (car __array2d_double)))
       _array2d_double)))
  (:serialization-length
   ()
   (+
    ;; planner_msgs/array1d_double[] _array2d_double
    (apply #'+ (send-all _array2d_double :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planner_msgs/array1d_double[] _array2d_double
     (write-long (length _array2d_double) s)
     (dolist (elem _array2d_double)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planner_msgs/array1d_double[] _array2d_double
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _array2d_double (let (r) (dotimes (i n) (push (instance planner_msgs::array1d_double :init) r)) r))
     (dolist (elem- _array2d_double)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planner_msgs::array2d_double :md5sum-) "c0e71cb94ac024b6a7159492ec303e32")
(setf (get planner_msgs::array2d_double :datatype-) "planner_msgs/array2d_double")
(setf (get planner_msgs::array2d_double :definition-)
      "array1d_double[] array2d_double
================================================================================
MSG: planner_msgs/array1d_double
float64[] array1d_double
")



(provide :planner_msgs/array2d_double "c0e71cb94ac024b6a7159492ec303e32")


