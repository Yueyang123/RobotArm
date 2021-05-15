; Auto-generated. Do not edit!


(cl:in-package arm-msg)


;//! \htmlinclude KEY.msg.html

(cl:defclass <KEY> (roslisp-msg-protocol:ros-message)
  ((TH1
    :reader TH1
    :initarg :TH1
    :type cl:float
    :initform 0.0)
   (TH2
    :reader TH2
    :initarg :TH2
    :type cl:float
    :initform 0.0)
   (TH3
    :reader TH3
    :initarg :TH3
    :type cl:float
    :initform 0.0)
   (TH4
    :reader TH4
    :initarg :TH4
    :type cl:float
    :initform 0.0)
   (TH5
    :reader TH5
    :initarg :TH5
    :type cl:float
    :initform 0.0)
   (TH6
    :reader TH6
    :initarg :TH6
    :type cl:float
    :initform 0.0))
)

(cl:defclass KEY (<KEY>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KEY>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KEY)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm-msg:<KEY> is deprecated: use arm-msg:KEY instead.")))

(cl:ensure-generic-function 'TH1-val :lambda-list '(m))
(cl:defmethod TH1-val ((m <KEY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:TH1-val is deprecated.  Use arm-msg:TH1 instead.")
  (TH1 m))

(cl:ensure-generic-function 'TH2-val :lambda-list '(m))
(cl:defmethod TH2-val ((m <KEY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:TH2-val is deprecated.  Use arm-msg:TH2 instead.")
  (TH2 m))

(cl:ensure-generic-function 'TH3-val :lambda-list '(m))
(cl:defmethod TH3-val ((m <KEY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:TH3-val is deprecated.  Use arm-msg:TH3 instead.")
  (TH3 m))

(cl:ensure-generic-function 'TH4-val :lambda-list '(m))
(cl:defmethod TH4-val ((m <KEY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:TH4-val is deprecated.  Use arm-msg:TH4 instead.")
  (TH4 m))

(cl:ensure-generic-function 'TH5-val :lambda-list '(m))
(cl:defmethod TH5-val ((m <KEY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:TH5-val is deprecated.  Use arm-msg:TH5 instead.")
  (TH5 m))

(cl:ensure-generic-function 'TH6-val :lambda-list '(m))
(cl:defmethod TH6-val ((m <KEY>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:TH6-val is deprecated.  Use arm-msg:TH6 instead.")
  (TH6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KEY>) ostream)
  "Serializes a message object of type '<KEY>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TH1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TH2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TH3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TH4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TH5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TH6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KEY>) istream)
  "Deserializes a message object of type '<KEY>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TH1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TH2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TH3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TH4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TH5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TH6) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KEY>)))
  "Returns string type for a message object of type '<KEY>"
  "arm/KEY")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KEY)))
  "Returns string type for a message object of type 'KEY"
  "arm/KEY")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KEY>)))
  "Returns md5sum for a message object of type '<KEY>"
  "ae0818592c8f0ca1320f402ba83ebe2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KEY)))
  "Returns md5sum for a message object of type 'KEY"
  "ae0818592c8f0ca1320f402ba83ebe2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KEY>)))
  "Returns full string definition for message of type '<KEY>"
  (cl:format cl:nil "float32 TH1~%float32 TH2~%float32 TH3~%float32 TH4~%float32 TH5~%float32 TH6~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KEY)))
  "Returns full string definition for message of type 'KEY"
  (cl:format cl:nil "float32 TH1~%float32 TH2~%float32 TH3~%float32 TH4~%float32 TH5~%float32 TH6~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KEY>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KEY>))
  "Converts a ROS message object to a list"
  (cl:list 'KEY
    (cl:cons ':TH1 (TH1 msg))
    (cl:cons ':TH2 (TH2 msg))
    (cl:cons ':TH3 (TH3 msg))
    (cl:cons ':TH4 (TH4 msg))
    (cl:cons ':TH5 (TH5 msg))
    (cl:cons ':TH6 (TH6 msg))
))
