@[Link["tensorflow"]]
lib LibTensorflow
  alias ApiDefMap = Void
  alias DeprecatedSession = Void
  alias DeviceList = Void
  alias Function = Void
  alias FunctionOptions = Void
  alias Graph = Void
  alias ImportGraphDefOptions = Void
  alias ImportGraphDefResults = Void
  alias Lib64T = LibC::LongLong
  alias Library = Void
  alias Operation = Void
  alias OperationDescription = Void
  alias Session = Void
  alias SessionOptions = Void
  alias Status = Void
  alias Tensor = Void
  alias UInt64T = LibC::UnsignedLongLong

  type X_ApiDefMap = Void*
  type X_DeviceList = Void*
  type X_DeprecatedSession = Void*
  type X_Function = Void*
  type X_FunctionOptions = Void*
  type X_Graph = Void*
  type X_ImportGraphDefOptions = Void*
  type X_ImportGraphDefResults = Void*
  type X_Library = Void*
  type X_Operation = Void*
  type X_OperationDescription = Void*
  type X_Session = Void*
  type X_SessionOptions = Void*
  type X_Status = Void*
  type X_Tensor = Void*

  struct Status
  end

  struct Input
    operation : X_Operation*
    index : LibC::Int
  end

  struct Output
    operation : X_Operation*
    index : LibC::Int
  end

  struct AttrMetadata
    is_list : UInt8
    list_size : Int64T
    type : AttrType
    total_size : Int64T
  end

  struct Buffer
    data : Void*
    length : LibC::SizeT
    data_deallocator : (Void*, LibC::SizeT -> Void)
  end

  struct WhileParams
    number_of_inputs : LibC::Int
    condition_graph : X_Graph*
    condition_inputs : Output*
    body_graph : X_Graph*
    body_inputs : Output*
    body_outputs : Output*
    name : LibC::Char*
  end

  enum AttrType
    AttrString      = 0
    AttrInt         = 1
    AttrFloat       = 2
    AttrBool        = 3
    AttrType        = 4
    AttrShape       = 5
    AttrTensor      = 6
    AttrPlaceholder = 7
    AttrFunc        = 8
  end

  enum DataType
    Float       = 1
    Double      = 2
    Int32       = 3
    Uint8       = 4
    Int16       = 5
    Int8        = 6
    String      = 7
    Complex64   = 8
    Complex     = 8
    Int64       = 9
    Bool        = 10
    Qint8       = 11
    Quint8      = 12
    Qint32      = 13
    Bfloat16    = 14
    Qint16      = 15
    Quint16     = 16
    Uint16      = 17
    Complex128  = 18
    Half        = 19
    Resource    = 20
  end

  enum Code
    OK                  = 0
    Cancelled           = 1
    Unknown             = 2
    InvalidArgument     = 3
    DeadlineExceeded    = 4
    NotFound            = 5
    AlreadyExists       = 6
    PermissionDenied    = 7
    ResourceExhausted   = 8
    FailedPrecondition  = 9
    Aborted             = 10
    OutOfRange          = 11
    Unimplemented       = 12
    Internal            = 13
    Unavailable         = 14
    DataLoss            = 15
    Unauthenticated     = 16
  end
end