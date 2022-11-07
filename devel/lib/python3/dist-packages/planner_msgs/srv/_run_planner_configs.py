# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from planner_msgs/run_planner_configsRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class run_planner_configsRequest(genpy.Message):
  _md5sum = "4c8b4d90bdad3d1800e49256a22af5b7"
  _type = "planner_msgs/run_planner_configsRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
#Start and Goal Config
float64[] start_config
float64[] goal_config

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

"""
  __slots__ = ['start_config','goal_config','planner_type','run_id','flag_iter_or_time','iter_or_time','tree_optimization','informed_sampling','show_tree']
  _slot_types = ['float64[]','float64[]','string','uint8','uint8','float64','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       start_config,goal_config,planner_type,run_id,flag_iter_or_time,iter_or_time,tree_optimization,informed_sampling,show_tree

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(run_planner_configsRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.start_config is None:
        self.start_config = []
      if self.goal_config is None:
        self.goal_config = []
      if self.planner_type is None:
        self.planner_type = ''
      if self.run_id is None:
        self.run_id = 0
      if self.flag_iter_or_time is None:
        self.flag_iter_or_time = 0
      if self.iter_or_time is None:
        self.iter_or_time = 0.
      if self.tree_optimization is None:
        self.tree_optimization = False
      if self.informed_sampling is None:
        self.informed_sampling = False
      if self.show_tree is None:
        self.show_tree = False
    else:
      self.start_config = []
      self.goal_config = []
      self.planner_type = ''
      self.run_id = 0
      self.flag_iter_or_time = 0
      self.iter_or_time = 0.
      self.tree_optimization = False
      self.informed_sampling = False
      self.show_tree = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.start_config)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.start_config))
      length = len(self.goal_config)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.goal_config))
      _x = self.planner_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2Bd3B().pack(_x.run_id, _x.flag_iter_or_time, _x.iter_or_time, _x.tree_optimization, _x.informed_sampling, _x.show_tree))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.start_config = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.goal_config = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.planner_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.planner_type = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.run_id, _x.flag_iter_or_time, _x.iter_or_time, _x.tree_optimization, _x.informed_sampling, _x.show_tree,) = _get_struct_2Bd3B().unpack(str[start:end])
      self.tree_optimization = bool(self.tree_optimization)
      self.informed_sampling = bool(self.informed_sampling)
      self.show_tree = bool(self.show_tree)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.start_config)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.start_config.tostring())
      length = len(self.goal_config)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.goal_config.tostring())
      _x = self.planner_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2Bd3B().pack(_x.run_id, _x.flag_iter_or_time, _x.iter_or_time, _x.tree_optimization, _x.informed_sampling, _x.show_tree))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.start_config = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.goal_config = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.planner_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.planner_type = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.run_id, _x.flag_iter_or_time, _x.iter_or_time, _x.tree_optimization, _x.informed_sampling, _x.show_tree,) = _get_struct_2Bd3B().unpack(str[start:end])
      self.tree_optimization = bool(self.tree_optimization)
      self.informed_sampling = bool(self.informed_sampling)
      self.show_tree = bool(self.show_tree)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2Bd3B = None
def _get_struct_2Bd3B():
    global _struct_2Bd3B
    if _struct_2Bd3B is None:
        _struct_2Bd3B = struct.Struct("<2Bd3B")
    return _struct_2Bd3B
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from planner_msgs/run_planner_configsResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import planner_msgs.msg

class run_planner_configsResponse(genpy.Message):
  _md5sum = "cb34f92ebddcd3e658fb29e6f20a0171"
  _type = "planner_msgs/run_planner_configsResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
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
float64[] array1d_double"""
  __slots__ = ['joint_trajectory','ee_trajectory','success']
  _slot_types = ['planner_msgs/array2d_double','planner_msgs/array2d_double','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       joint_trajectory,ee_trajectory,success

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(run_planner_configsResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.joint_trajectory is None:
        self.joint_trajectory = planner_msgs.msg.array2d_double()
      if self.ee_trajectory is None:
        self.ee_trajectory = planner_msgs.msg.array2d_double()
      if self.success is None:
        self.success = False
    else:
      self.joint_trajectory = planner_msgs.msg.array2d_double()
      self.ee_trajectory = planner_msgs.msg.array2d_double()
      self.success = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.joint_trajectory.array2d_double)
      buff.write(_struct_I.pack(length))
      for val1 in self.joint_trajectory.array2d_double:
        length = len(val1.array1d_double)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.Struct(pattern).pack(*val1.array1d_double))
      length = len(self.ee_trajectory.array2d_double)
      buff.write(_struct_I.pack(length))
      for val1 in self.ee_trajectory.array2d_double:
        length = len(val1.array1d_double)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.Struct(pattern).pack(*val1.array1d_double))
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.joint_trajectory is None:
        self.joint_trajectory = planner_msgs.msg.array2d_double()
      if self.ee_trajectory is None:
        self.ee_trajectory = planner_msgs.msg.array2d_double()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joint_trajectory.array2d_double = []
      for i in range(0, length):
        val1 = planner_msgs.msg.array1d_double()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.array1d_double = s.unpack(str[start:end])
        self.joint_trajectory.array2d_double.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.ee_trajectory.array2d_double = []
      for i in range(0, length):
        val1 = planner_msgs.msg.array1d_double()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.array1d_double = s.unpack(str[start:end])
        self.ee_trajectory.array2d_double.append(val1)
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.joint_trajectory.array2d_double)
      buff.write(_struct_I.pack(length))
      for val1 in self.joint_trajectory.array2d_double:
        length = len(val1.array1d_double)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.array1d_double.tostring())
      length = len(self.ee_trajectory.array2d_double)
      buff.write(_struct_I.pack(length))
      for val1 in self.ee_trajectory.array2d_double:
        length = len(val1.array1d_double)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.array1d_double.tostring())
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.joint_trajectory is None:
        self.joint_trajectory = planner_msgs.msg.array2d_double()
      if self.ee_trajectory is None:
        self.ee_trajectory = planner_msgs.msg.array2d_double()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joint_trajectory.array2d_double = []
      for i in range(0, length):
        val1 = planner_msgs.msg.array1d_double()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.array1d_double = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        self.joint_trajectory.array2d_double.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.ee_trajectory.array2d_double = []
      for i in range(0, length):
        val1 = planner_msgs.msg.array1d_double()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.array1d_double = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        self.ee_trajectory.array2d_double.append(val1)
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class run_planner_configs(object):
  _type          = 'planner_msgs/run_planner_configs'
  _md5sum = '8ca5afb164ebfb318e4cc0e72e99b251'
  _request_class  = run_planner_configsRequest
  _response_class = run_planner_configsResponse
