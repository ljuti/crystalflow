require "./definitions"

@[Link["tensorflow"]]
lib LibTensorflow
  fun new_tensor = TF_NewTensor(type : DataType,
    dims : Int64T*,
    num_dims : LibC::Int,
    data : Void*,
    len : LibC::SizeT,
    deallocator : (Void*, LibC::SizeT, Void* -> Void),
    deallocator_arg : Void*
  ) : X_Tensor

  fun allocate_tensor = TF_AllocateTensor(type : DataType,
    dims : Int64T*,
    num_dims : LibC::Int,
    len : LibC::SizeT
  ) : X_Tensor

  fun delete_tensor = TF_DeleteTensor(tensor : X_Tensor)

  fun tensor_type = TF_TensorType(tensor : X_Tensor) : DataType

  fun tensor_maybe_move = TF_TensorMaybeMove(tensor : X_Tensor) : X_Tensor

  fun number_of_dimensions = TF_NumDims(tensor : X_Tensor) : LibC::Int

  fun tensor_length = TF_Dim(tensor : X_Tensor, dim_index : LibC::Int) : Int64T

  fun tensor_byte_size = TF_TensorByteSize(tensor : X_Tensor) : LibC::SizeT

  fun tensor_data = TF_TensorData(tensor : X_Tensor) : Void*

  fun new_while = TF_NewWhile(graph : X_Graph*,
    inputs : Output*,
    number_of_inputs : LibC::Int,
    status : X_Status*
  ) : WhileParams

  fun finish_while = TF_FinishWhile(params : WhileParams*, status : X_Status*, outputs : Output*) : Void
  fun abort_while = TF_AbortWhile(params : WhileParams*) : Void
end