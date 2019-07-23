# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from frc_msgs/MatchSpecificData.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class MatchSpecificData(genpy.Message):
  _md5sum = "841701141221f3ad34663801c6ab3c63"
  _type = "frc_msgs/MatchSpecificData"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header

string eventName
int8 matchType
int8 matchNumber
int8 replayNumber

float64 matchTimeRemaining
int8 allianceColor
int8 driverStationLocation
string gameSpecificData

bool Enabled
bool Disabled
bool Autonomous
bool Test
bool FMSAttached
bool DSAttached
bool OperatorControl

float64 BatteryVoltage

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
"""
  __slots__ = ['header','eventName','matchType','matchNumber','replayNumber','matchTimeRemaining','allianceColor','driverStationLocation','gameSpecificData','Enabled','Disabled','Autonomous','Test','FMSAttached','DSAttached','OperatorControl','BatteryVoltage']
  _slot_types = ['std_msgs/Header','string','int8','int8','int8','float64','int8','int8','string','bool','bool','bool','bool','bool','bool','bool','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,eventName,matchType,matchNumber,replayNumber,matchTimeRemaining,allianceColor,driverStationLocation,gameSpecificData,Enabled,Disabled,Autonomous,Test,FMSAttached,DSAttached,OperatorControl,BatteryVoltage

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MatchSpecificData, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.eventName is None:
        self.eventName = ''
      if self.matchType is None:
        self.matchType = 0
      if self.matchNumber is None:
        self.matchNumber = 0
      if self.replayNumber is None:
        self.replayNumber = 0
      if self.matchTimeRemaining is None:
        self.matchTimeRemaining = 0.
      if self.allianceColor is None:
        self.allianceColor = 0
      if self.driverStationLocation is None:
        self.driverStationLocation = 0
      if self.gameSpecificData is None:
        self.gameSpecificData = ''
      if self.Enabled is None:
        self.Enabled = False
      if self.Disabled is None:
        self.Disabled = False
      if self.Autonomous is None:
        self.Autonomous = False
      if self.Test is None:
        self.Test = False
      if self.FMSAttached is None:
        self.FMSAttached = False
      if self.DSAttached is None:
        self.DSAttached = False
      if self.OperatorControl is None:
        self.OperatorControl = False
      if self.BatteryVoltage is None:
        self.BatteryVoltage = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.eventName = ''
      self.matchType = 0
      self.matchNumber = 0
      self.replayNumber = 0
      self.matchTimeRemaining = 0.
      self.allianceColor = 0
      self.driverStationLocation = 0
      self.gameSpecificData = ''
      self.Enabled = False
      self.Disabled = False
      self.Autonomous = False
      self.Test = False
      self.FMSAttached = False
      self.DSAttached = False
      self.OperatorControl = False
      self.BatteryVoltage = 0.

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
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.eventName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3bd2b().pack(_x.matchType, _x.matchNumber, _x.replayNumber, _x.matchTimeRemaining, _x.allianceColor, _x.driverStationLocation))
      _x = self.gameSpecificData
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7Bd().pack(_x.Enabled, _x.Disabled, _x.Autonomous, _x.Test, _x.FMSAttached, _x.DSAttached, _x.OperatorControl, _x.BatteryVoltage))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eventName = str[start:end].decode('utf-8')
      else:
        self.eventName = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.matchType, _x.matchNumber, _x.replayNumber, _x.matchTimeRemaining, _x.allianceColor, _x.driverStationLocation,) = _get_struct_3bd2b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gameSpecificData = str[start:end].decode('utf-8')
      else:
        self.gameSpecificData = str[start:end]
      _x = self
      start = end
      end += 15
      (_x.Enabled, _x.Disabled, _x.Autonomous, _x.Test, _x.FMSAttached, _x.DSAttached, _x.OperatorControl, _x.BatteryVoltage,) = _get_struct_7Bd().unpack(str[start:end])
      self.Enabled = bool(self.Enabled)
      self.Disabled = bool(self.Disabled)
      self.Autonomous = bool(self.Autonomous)
      self.Test = bool(self.Test)
      self.FMSAttached = bool(self.FMSAttached)
      self.DSAttached = bool(self.DSAttached)
      self.OperatorControl = bool(self.OperatorControl)
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
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.eventName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3bd2b().pack(_x.matchType, _x.matchNumber, _x.replayNumber, _x.matchTimeRemaining, _x.allianceColor, _x.driverStationLocation))
      _x = self.gameSpecificData
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7Bd().pack(_x.Enabled, _x.Disabled, _x.Autonomous, _x.Test, _x.FMSAttached, _x.DSAttached, _x.OperatorControl, _x.BatteryVoltage))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eventName = str[start:end].decode('utf-8')
      else:
        self.eventName = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.matchType, _x.matchNumber, _x.replayNumber, _x.matchTimeRemaining, _x.allianceColor, _x.driverStationLocation,) = _get_struct_3bd2b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gameSpecificData = str[start:end].decode('utf-8')
      else:
        self.gameSpecificData = str[start:end]
      _x = self
      start = end
      end += 15
      (_x.Enabled, _x.Disabled, _x.Autonomous, _x.Test, _x.FMSAttached, _x.DSAttached, _x.OperatorControl, _x.BatteryVoltage,) = _get_struct_7Bd().unpack(str[start:end])
      self.Enabled = bool(self.Enabled)
      self.Disabled = bool(self.Disabled)
      self.Autonomous = bool(self.Autonomous)
      self.Test = bool(self.Test)
      self.FMSAttached = bool(self.FMSAttached)
      self.DSAttached = bool(self.DSAttached)
      self.OperatorControl = bool(self.OperatorControl)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3bd2b = None
def _get_struct_3bd2b():
    global _struct_3bd2b
    if _struct_3bd2b is None:
        _struct_3bd2b = struct.Struct("<3bd2b")
    return _struct_3bd2b
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_7Bd = None
def _get_struct_7Bd():
    global _struct_7Bd
    if _struct_7Bd is None:
        _struct_7Bd = struct.Struct("<7Bd")
    return _struct_7Bd
