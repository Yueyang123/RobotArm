; Auto-generated. Do not edit!


(cl:in-package arm-srv)


;//! \htmlinclude PS_2-request.msg.html

(cl:defclass <PS_2-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:integer
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:integer
    :initform 0)
   (C
    :reader C
    :initarg :C
    :type cl:integer
    :initform 0))
)

(cl:defclass PS_2-request (<PS_2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PS_2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PS_2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm-srv:<PS_2-request> is deprecated: use arm-srv:PS_2-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <PS_2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-srv:A-val is deprecated.  Use arm-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <PS_2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-srv:B-val is deprecated.  Use arm-srv:B instead.")
  (B m))

(cl:ensure-generic-function 'C-val :lambda-list '(m))
(cl:defmethod C-val ((m <PS_2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-srv:C-val is deprecated.  Use arm-srv:C instead.")
  (C m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PS_2-request>) ostream)
  "Serializes a message object of type '<PS_2-request>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'C)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PS_2-request>) istream)
  "Deserializes a message object of type '<PS_2-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'C) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PS_2-request>)))
  "Returns string type for a service object of type '<PS_2-request>"
  "arm/PS_2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PS_2-request)))
  "Returns string type for a service object of type 'PS_2-request"
  "arm/PS_2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PS_2-request>)))
  "Returns md5sum for a message object of type '<PS_2-request>"
  "64abfc7bce4665e399df2411641c82d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PS_2-request)))
  "Returns md5sum for a message object of type 'PS_2-request"
  "64abfc7bce4665e399df2411641c82d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PS_2-request>)))
  "Returns full string definition for message of type '<PS_2-request>"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PS_2-request)))
  "Returns full string definition for message of type 'PS_2-request"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PS_2-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PS_2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PS_2-request
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':C (C msg))
))
;//! \htmlinclude PS_2-response.msg.html

(cl:defclass <PS_2-response> (roslisp-msg-protocol:ros-message)
  ((SUM
    :reader SUM
    :initarg :SUM
    :type cl:integer
    :initform 0))
)

(cl:defclass PS_2-response (<PS_2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PS_2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PS_2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm-srv:<PS_2-response> is deprecated: use arm-srv:PS_2-response instead.")))

(cl:ensure-generic-function 'SUM-val :lambda-list '(m))
(cl:defmethod SUM-val ((m <PS_2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-srv:SUM-val is deprecated.  Use arm-srv:SUM instead.")
  (SUM m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PS_2-response>) ostream)
  "Serializes a message object of type '<PS_2-response>"
  (cl:let* ((signed (cl:slot-value msg 'SUM)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PS_2-response>) istream)
  "Deserializes a message object of type '<PS_2-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SUM) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PS_2-response>)))
  "Returns string type for a service object of type '<PS_2-response>"
  "arm/PS_2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PS_2-response)))
  "Returns string type for a service object of type 'PS_2-response"
  "arm/PS_2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PS_2-response>)))
  "Returns md5sum for a message object of type '<PS_2-response>"
  "64abfc7bce4665e399df2411641c82d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PS_2-response)))
  "Returns md5sum for a message object of type 'PS_2-response"
  "64abfc7bce4665e399df2411641c82d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PS_2-response>)))
  "Returns full string definition for message of type '<PS_2-response>"
  (cl:format cl:nil "int32 SUM~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PS_2-response)))
  "Returns full string definition for message of type 'PS_2-response"
  (cl:format cl:nil "int32 SUM~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PS_2-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PS_2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PS_2-response
    (cl:cons ':SUM (SUM msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PS_2)))
  'PS_2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PS_2)))
  'PS_2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PS_2)))
  "Returns string type for a service object of type '<PS_2>"
  "arm/PS_2")