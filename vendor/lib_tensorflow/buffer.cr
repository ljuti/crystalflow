require "./definitions"

@[Link("tensorflow")]
lib LibTensorflow
  fun new_buffer = TF_NewBufferFromString(proto : Void*, proto_len : LibC::SizeT) : Buffer*
  fun new_buffer = TF_NewBuffer : Buffer*

  fun delete_buffer = TF_DeleteBuffer(buffer : Buffer*)

  fun get_buffer = TF_GetBuffer(buffer : Buffer*) : Buffer
end