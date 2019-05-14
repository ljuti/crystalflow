require "./definitions"

@[Link("tensorflow")]
lib LibTensorflow

  fun new_session_options = TF_NewSessionOptions : X_SessionOptions
  fun delete_session_options = TF_DeleteSessionOptions(options : X_SessionOptions) : Void

  fun set_target = TF_SetTarget(options : X_SessionOptions, target : LibC::Char*) : Void

  fun set_config = TF_SetConfig(options : X_SessionOptions,
    proto : Void*,
    proto_len : LibC::SizeT,
    status : X_Status
  ) : Void

  fun new_session = TF_Session(graph : X_Graph, opts : X_SessionOptions, status : X_Status) : X_Session
  fun close_session = TF_CloseSession(session : X_Session, status : X_Status) : Void
  fun delete_session = TF_DeleteSession(session : X_Session, status : X_Status) : Void

  fun load_session_from_saved_model = TF_LoadSessionFromSavedModel(options : X_SessionOptions*,
    run_options : Buffer*,
    export_dir : LibC::Char*,
    tags : LibC::Char**,
    tags_len : LibC::Int,
    graph : X_Graph*,
    meta_graph_def : Buffer*,
    status : X_Status*
  ) : X_Session*
  # fun get_ops_list = TF_GetAllOpList() : Buffer

  fun session_run = TF_SessionRun(session : X_Session*,
    run_options : Buffer*,
    inputs : Output*,
    input_values : X_Tensor*,
    number_of_inputs : LibC::Int,
    outputs : Output*,
    output_values : X_Tensor**,
    numer_of_outputs : LibC::Int,
    target_operations : X_Operation*,
    number_of_targets : LibC::Int,
    metadata : Buffer*,
    status : X_Status*
  ) : Void

  fun session_partial_run_setup = TF_SessionPRunSetup(session : X_Session*,
    inputs : Output*,
    number_of_inputs : LibC::Int,
    outputs : Output*,
    number_of_outputs : LibC::Int,
    target_operations : X_Operation*,
    number_of_targets : LibC::Int,
    handle : LibC::Char**,
    status : X_Status*
  ) : Void

  fun session_partial_run = TF_SessionPRun(session : X_Session*,
    handle : LibC::Char*,
    inputs : Output*,
    input_values : X_Tensor*,
    number_of_inputs : LibC::Int,
    outputs : Output*,
    output_values : X_Tensor**,
    number_of_outputs : LibC::Int,
    target_operations : X_Operation*,
    number_of_targets : LibC::Int,
    status : X_Status*
  ) : Void

  fun delete_partial_run_handle = TF_DeletePRunHandle(handle : LibC::Char*) : Void

  fun close_deprecated_session = TF_CloseDeprecatedSession(session : X_DeprecatedSession*, status : X_Status*) : Void
  fun delete_deprecated_session = TF_DeleteDeprecatedSession(session : X_DeprecatedSession*, status : X_Session*) : Void
  fun reset = TF_Reset(options : X_SessionOptions,
    containers : LibC::Char**,
    number_of_containers : LibC::Int,
    status : X_Status*
  ) : Void
  fun run = TF_Run(session : X_DeprecatedSession*,
    run_options : Buffer*,
    input_names : LibC::Char**,
    inputs : X_Tensor**,
    number_of_inputs : LibC::Int,
    output_names : LibC::Char**,
    outputs : X_Tensor**,
    number_of_outputs : LibC::Int,
    target_operation_names : LibC::Char**,
    number_of_targets : LibC::Int,
    metadata : Buffer*,
    status : X_Status*
  ) : Void
  fun partial_run_setup = TF_PRunSetup(session : X_DeprecatedSession,
    input_names : LibC::Char**,
    number_of_inputs : LibC::Int,
    output_names : LibC::Char**,
    number_of_outputs : LibC::Int,
    target_operation_names : LibC::Char**,
    number_of_targets : LibC::Int,
    handle : LibC::Char**,
    status : X_Status*
  ) : Void
  fun partial_run(session : X_DeprecatedSession,
    handle : LibC::Char*,
    input_names : LibC::Char**,
    inputs : X_Tensor**,
    number_of_inputs : LibC::Int,
    output_names : LibC::Char**,
    outputs : X_Tensor**,
    number_of_outputs : LibC::Int,
    target_operation_names : LibC::Char**,
    number_of_targets : LibC::Int,
    status : X_Status*
  ) : Void

  fun session_list_devices = TF_SessionListDevices(session : X_Session*, status : X_Status*) : X_DeviceList*
  fun deprecated_session_list_devices = TF_DeprecatedSessionListDevices(session : X_DeprecatedSession*, status : X_Status*) : X_DeviceList*

  fun load_library = TF_LoadLibrary(filename : LibC::Char*, status : X_Status*) : X_Library*
  fun delete_library_handle = TF_DeleteLibraryHandle(handle : X_Library*) : Void

  fun get_op_list = TF_GetOpList(handle : X_Library*) : Buffer
  fun get_all_op_list = TF_GetAllOpList() : Buffer*

  fun new_api_def_map = TF_NewApiDefMap(op_list_buffer : Buffer*, status : X_Status*) : X_ApiDefMap*
  fun delete_api_def_map = TF_DeleteApiDefMap(apimap : X_ApiDefMap*) : Void
  fun api_def_map_put = TF_ApiDefMapPut(apimap : X_ApiDefMap*,
    text : LibC::Char*,
    text_length : LibC::SizeT,
    status : X_Status*
  ) : Void
  fun api_def_map_get = TF_ApiDefMapGet(apimap : X_ApiDefMap*,
    name : LibC::Char*,
    name_length : LibC::SizeT,
    status : X_Status*
  ) : Buffer*
end