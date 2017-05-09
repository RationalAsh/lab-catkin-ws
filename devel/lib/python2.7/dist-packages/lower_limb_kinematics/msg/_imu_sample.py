# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lower_limb_kinematics/imu_sample.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class imu_sample(genpy.Message):
  _md5sum = "6e7fe6e4f341022722ea2e4be6e80f82"
  _type = "lower_limb_kinematics/imu_sample"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32[9] imu_sample
float32 time"""
  __slots__ = ['imu_sample','time']
  _slot_types = ['float32[9]','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       imu_sample,time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(imu_sample, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.imu_sample is None:
        self.imu_sample = [0.,0.,0.,0.,0.,0.,0.,0.,0.]
      if self.time is None:
        self.time = 0.
    else:
      self.imu_sample = [0.,0.,0.,0.,0.,0.,0.,0.,0.]
      self.time = 0.

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
      buff.write(_struct_9f.pack(*self.imu_sample))
      buff.write(_struct_f.pack(self.time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 36
      self.imu_sample = _struct_9f.unpack(str[start:end])
      start = end
      end += 4
      (self.time,) = _struct_f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(self.imu_sample.tostring())
      buff.write(_struct_f.pack(self.time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 36
      self.imu_sample = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=9)
      start = end
      end += 4
      (self.time,) = _struct_f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_f = struct.Struct("<f")
_struct_9f = struct.Struct("<9f")
