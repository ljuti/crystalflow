@[Link("tensorflow")]
lib LibTensorflow
  fun string_encode = TF_StringEncode(src : LibC::Char*,
    src_len : LibC::SizeT,
    dst : LibC::Char*,
    dst_len : LibC::SizeT,
    status : X_Status
  ) : LibC::SizeT

  fun string_decode = TF_StringDecode(src : LibC::Char*,
    src_len : LibC::SizeT,
    dst : LibC::Char**,
    dst_len : LibC::SizeT*,
    status : X_Status
  ) : LibC::SizeT

  fun string_encoded_size = TF_StringEncodedSize(len : LibC::SizeT) : LibC::SizeT
end