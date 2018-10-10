require "./definitions"

@[Link["tensorflow"]]
lib LibTensorflow
  fun new_status = TF_NewStatus : X_Status
  fun set_status = TF_SetStatus(status : X_Status, code : Code, message : LibC::Char*)
  fun delete_status = TF_DeleteStatus(status : X_Status)

  fun get_code = TF_GetCode(status : X_Status) : Code

  fun message = TF_Message(status : X_Status)

  fun get_all_registered_kernels = TF_GetAllRegisteredKernels(status : X_Status*) : Buffer*
  fun get_registered_kernels_for_op = TF_GetRegisteredKernelsForOp(name : LibC::Char*, status : X_Status*) : Buffer*

  fun delete_device_list = TF_DeleteDeviceList(list : X_DeviceList*) : Void
  fun device_list_count = TF_DeviceListCount(list : X_DeviceList*) : LibC::Int

  fun device_list_name = TF_DeviceListName(list : X_DeviceList*, index : LibC::Int, status : X_Status*) : LibC::Char*
  fun device_list_type = TF_DeviceListType(list : X_DeviceList*, index : LibC::Int, status : X_Status*) : LibC::Char*
  fun device_list_memory_bytes = TF_DeviceListMemoryBytes(list : X_DeviceList*, index : LibC::Int, status : X_Status*) : Int64T
  fun device_list_incarnation = TF_DeviceListIncarnation(list : X_DeviceList*, index : LibC::Int, status : X_Status*) : UInt64T
end