require "./definitions"

@[Link("tensorflow")]
lib LibTensorflow
  fun new_graph = TF_NewGraph() : X_Graph

  fun graph_set_tensor_shape = TF_GraphSetTensorShape(graph : X_Graph*,
    output : Output,
    dimensions : Int64T,
    number_of_dimensions : LibC::Int,
    status : X_Status*
  ) : Void

  fun graph_get_tensor_number_of_dimensions = TF_GraphGetTensorNumDims(graph : X_Graph*,
    output : Output,
    status : X_Status*
  ) : LibC::Int

  fun graph_get_tensor_shape = TF_GraphGetTensorShape(graph : X_Graph*,
    output : Output,
    dimensions : Int64T,
    number_of_dimensions : LibC::Int,
    status : X_Status*
  ) : Void

  fun new_operation = TF_NewOperation(graph : X_Graph,
    operation_type : LibC::Char*,
    operation_name : LibC::Char*
  ) : X_OperationDescription*

  fun set_device = TF_SetDevice(description : X_OperationDescription*, device : LibC::Char*) : Void

  fun add_input = TF_AddInput(description : X_OperationDescription*, input : Output) : Void
  fun add_input_list = TF_AddInputList(description : X_OperationDescription*,
    inputs : Output*,
    number_of_inputs : LibC::Int
  ) : Void
  fun add_control_input = TF_AddControlInput(description : X_OperationDescription*, input : X_Operation*) : Void

  fun set_attr_string = TF_SetAttrString(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    value : Void*,
    length : LibC::SizeT
  ) : Void
  fun set_attr_string_list = TF_SetAttrStringList(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    values : Void*,
    lengths : LibC::SizeT*,
    number_of_values : LibC::Int
  ) : Void
  fun set_attr_int = TF_SetAttrInt(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    value : Int64T
  ) : Void
  fun set_attr_int_list = TF_SetAttrIntList(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    values : Int64T*,
    number_of_values : LibC::Int
  ) : Void
  fun set_attr_float = TF_SetAttrFloat(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    value : LibC::Float
  ) : Void
  fun set_attr_float_list = TF_SetAttrFloatList(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    values : LibC::Float*,
    number_of_values : LibC::Int
  ) : Void
  fun set_attr_bool = TF_SetAttrBool(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    value : UInt8
  ) : Void
  fun set_attr_bool_list = TF_SetAttrBoolList(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    values : UInt8*,
    number_of_values : LibC::Int
  ) : Void
  fun set_attr_type = TF_SetAttrType(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    value : DataType
  ) : Void
  fun set_attr_type_list = TF_SetAttrTypeList(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    values : DataType*,
    number_of_values : LibC::Int
  ) : Void
  fun set_attr_func_name = TF_SetAttrFuncName(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    value : LibC::Char,
    length : LibC::SizeT
  ) : Void
  fun set_attr_shape = TF_SetAttrShape(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    dimensions : Int64T*,
    number_of_dimensions : LibC::Int
  ) : Void
  fun set_attr_shape_list = TF_SetAttrShapeList(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    dimensions : Int64T*,
    number_of_dimensions : LibC::Int*,
    number_of_shapes : LibC::Int
  ) : Void
  fun set_attr_tensor_shape_proto = TF_SetAttrTensorShapeProto(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    proto : Void*,
    proto_length : LibC::SizeT,
    status : X_Status*
  ) : Void
  fun set_attr_tensor_shape_proto_list = TF_SetAttrTensorShapeProtoList(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    protos : Void*,
    proto_lengths : LibC::SizeT*,
    number_of_shapes : LibC::Int,
    status : X_Status*
  ) : Void
  fun set_attr_tensor = TF_SetAttrTensor(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    value : X_Tensor*,
    status : X_Status*
  ) : Void
  fun set_attr_tensor_list = TF_SetAttrTensorList(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    values : X_Tensor*,
    number_of_values : LibC::Int,
    status : X_Status*
  ) : Void
  fun set_attr_value_proto = TF_SetAttrValueProto(description : X_OperationDescription*,
    attr_name : LibC::Char*,
    proto : Void*,
    proto_length : LibC::SizeT,
    status : X_Status*
  ) : Void

  fun finish_operation = TF_FinishOperation(description : X_OperationDescription*, status : X_Status*) : X_Operation*
  fun operation_name = TF_OperationName(operation : X_Operation*) : LibC::Char*
  fun operation_op_type = TF_OperationOpType(operation : X_Operation*) : LibC::Char*
  fun operation_device = TF_OperationDevice(operation : X_Operation*) : LibC::Char*

  fun operation_num_outputs = TF_OperationNumOutputs(operation : X_Operation*) : LibC::Int
  fun operation_output_type = TF_OperationOutputType(output : Output) : DataType
  fun operation_output_list_length = TF_OperationOutputListLength(operation : X_Operation*,
    argument_name : LibC::Char*,
    status : X_Status*
  ) : LibC::Int

  fun operation_num_inputs = TF_OperationNumInputs(operation : X_Operation*) : LibC::Int
  fun operation_input_type = TF_OperationInputType(input : Input) : DataType
  fun operation_input_list_length = TF_OperationInputListLength(operation : X_Operation*,
    argument_name : LibC::Char*,
    status : X_Status*
  ) : LibC::Int

  fun operation_input = TF_OperationInput(input : Input) : Output

  fun operation_output_num_consumers = TF_OperationOutputNumConsumers(output : Output) : LibC::Int
  fun operation_output_consumers = TF_OperationOutputConsumers(output : Output,
    consumers : Input*,
    max_consumers : LibC::Int
  ) : LibC::Int

  fun operation_num_control_inputs = TF_OperationNumControlInputs(operation : X_Operation*) : LibC::Int
  fun operation_num_control_outputs = TF_OperationNumControlOutputs(operation : X_Operation*) : LibC::Int
  fun operation_get_control_inputs = TF_OperationGetControlInputs(operation : X_Operation*,
    control_inputs : X_Operation**,
    max_control_inputs : LibC::Int
  ) : LibC::Int
  fun operation_get_control_outputs = TF_OperationGetControlOutputs(operation : X_Operation*,
    control_outputs : X_Operation**,
    max_control_outputs : LibC::Int
  ) : LibC::Int

  fun operation_get_attr_metadata = TF_OperationGetAttrMetadata(operation : X_Operation*,
    attr_name : LibC::Char*,
    status : X_Status*
  ) : AttrMetadata

  fun operation_get_attr_string = TF_OperationGetAttrString(operation : X_Operation*,
    attr_name : LibC::Char*,
    value : Void*,
    max_length : LibC::SizeT,
    status : X_Status*
  ) : Void

  fun opeation_get_attr_string_list = TF_OperationGetAttrStringList(operation : X_Operation*,
    attr_name : LibC::Char*,
    values : Void**,
    lengths : LibC::SizeT*,
    max_values : LibC::Int,
    storage : Void*,
    storage_size : LibC::SizeT,
    status : X_Status*
  ) : Void

  fun operation_get_attr_int = TF_OperationGetAttrInt(operation : X_Operation*,
    attr_name : LibC::Char*,
    value : Int64T*,
    status : X_Status*
  ) : Void

  fun operation_get_attr_int_list = TF_OperationGetAttrIntList(operation : X_Operation*,
    attr_name : LibC::Char*,
    values : Int64T*,
    max_values : LibC::Int,
    status : X_Status*
  ) : Void

  fun operation_get_attr_float = TF_OperationGetAttrFloat(operation : X_Operation*,
    attr_name : LibC::Char*,
    value : Float64*,
    status : X_Status*
  ) : Void

  fun operation_get_attr_float_list = TF_OperationGetAttrFloatList(operation : X_Operation*,
    attr_name : LibC::Char*,
    values : Float64*,
    max_values : LibC::Int,
    status : X_Status*
  ) : Void

  fun operation_get_attr_bool = TF_OperationGetAttrBool(operation : X_Operation*,
    attr_name : LibC::Char*,
    value : UInt8*,
    status : X_Status*
  ) : Void

  fun operation_get_attr_bool_list = TF_OperationGetAttrBoolList(operation : X_Operation*,
    attr_name : LibC::Char*,
    values : UInt8*,
    max_values : LibC::Int,
    status : X_Status*
  ) : Void

  fun operation_get_attr_type = TF_OperationGetAttrType(operation : X_Operation*,
    attr_name : LibC::Char*,
    value : DataType*,
    status : X_Status*
  ) : Void

  fun operation_get_attr_type_list = TF_OperationGetAttrTypeList(operation : X_Operation*,
    attr_name : LibC::Char*,
    values : DataType**,
    max_values : LibC::Int,
    status : X_Status*
  ) : Void

  fun operation_get_attr_shape = TF_OperationGetAttrShape(operation : X_Operation*,
    attr_name : LibC::Char*,
    value : Int64T*,
    number_of_dimensions : LibC::Int,
    status : X_Status*
  ) : Void

  fun operation_get_attr_shape_list = TF_OperationGetAttrShapeList(operation : X_Operation*,
    attr_name : LibC::Char*,
    dimensions : Int64T*,
    number_of_dimensions : LibC::Int,
    number_of_shapes : LibC::Int,
    storage : Int64T,
    storage_size : LibC::Int,
    status : X_Status*
  ) : Void

  fun operation_get_attr_tensor_shape_proto = TF_OperationGetAttrTensorShapeProto(operation : X_Operation*,
    attr_name : LibC::Char*,
    value : Buffer*,
    status : X_Status*
  ) : Void

  fun operation_get_attr_tensor_shape_proto_list = TF_OperationGetAttrTensorShapeProtoList(operation : X_Operation*,
    attr_name : LibC::Char*,
    values : Buffer**,
    max_values : LibC::Int,
    status : X_Status*
  ) : Void

  fun operation_get_attr_tensor = TF_OperationGetAttrTensor(operation : X_Operation*,
    attr_name : LibC::Char*,
    value : X_Tensor*,
    status : X_Status*
  ) : Void

  fun operation_get_attr_tensor_list = TF_OperationGetAttrTensorList(operation : X_Operation*,
    attr_name : LibC::Char*,
    values : X_Tensor**,
    max_values : LibC::Int,
    status : X_Status*
  ) : Void

  fun operation_get_attr_value_proto = TF_OperationGetAttrValueProto(operation : X_Operation*,
    attr_name : LibC::Char*,
    output_attr_value : Buffer*,
    status : X_Status*
  ) : Void

  fun graph_operation_by_name = TF_GraphOperationByName(graph : X_Graph*, name : LibC::Char*) : X_Operation*
  fun graph_next_operation = TF_GraphNextOperation(graph : X_Graph*, position : LibC::SizeT) : X_Operation*
  fun graph_to_graph_def = TF_GraphToGraphDef(graph : X_Graph*, output_graph_def : Buffer*, status : X_Status*) : Void
  fun graph_get_op_def = TF_GraphGetOpDef(graph : X_Graph*, name : LibC::Char*, output_op_def : Buffer*, status : X_Status*) : Void
  fun graph_versions = TF_GraphVersions(graph : X_Graph*, output_version_def : Buffer*, status : X_Status*) : Void

  fun new_import_graph_def_options = TF_NewImportGraphDefOptions() : X_ImportGraphDefOptions*
  fun delete_import_graph_def_options = TF_DeleteImportGraphDefOptions(options : X_ImportGraphDefOptions*) : Void

  fun import_graph_def_options_set_uniquify_names = TF_ImportGraphDefOptionsSetUniquifyNames(options : X_ImportGraphDefOptions*, names : LibC::Char)
  fun import_graph_def_options_set_uniquify_prefix = TF_ImportGraphDefOptionsSetUniquifyPrefix(options : X_ImportGraphDefOptions*, prefix : LibC::Char)
  fun import_graph_def_options_add_input_mapping = TF_ImportGraphDefOptionsAddInputMapping(options : X_ImportGraphDefOptions*,
    source_name : LibC::Char*,
    source_index : LibC::Int,
    destination : Output
  ) : Void
  fun import_graph_def_options_remap_control_dependency = TF_ImportGraphDefOptionsRemapControlDependency(options : X_ImportGraphDefOptions*,
    source_name : LibC::Char*,
    destination : X_Operation*
  ) : Void
  fun import_graph_def_options_add_control_dependency = TF_ImportGraphDefOptionsAddControlDependency(options : X_ImportGraphDefOptions*, operation : X_Operation*) : Void
  fun import_graph_def_options_add_return_output = TF_ImportGraphDefOptionsAddReturnOutput(options : X_ImportGraphDefOptions*, name : LibC::Char*, index : LibC::Int) : Void
  fun import_graph_def_options_num_return_outputs = TF_ImportGraphDefOptionsNumReturnOutputs(options : X_ImportGraphDefOptions*) : LibC::Int
  fun import_graph_def_options_add_return_operation = TF_ImportGraphDefOptionsAddReturnOperation(options : X_ImportGraphDefOptions*, name : LibC::Char*) : Void
  fun import_graph_def_options_num_return_operations = TF_ImportGraphDefOptionsNumReturnOperations(options : X_ImportGraphDefOptions*) : LibC::Int
  fun import_graph_def_results_return_outputs = TF_ImportGraphDefResultsReturnOutputs(results : X_ImportGraphDefResults*,
    number_of_outputs : LibC::Int*,
    outputs : Output*
  ) : Void
  fun import_graph_def_results_return_operations = TF_ImportGraphDefResultsReturnOperations(results : X_ImportGraphDefResults,
    number_of_operations : LibC::Int*,
    operations : X_Operation*
  ) : Void
  fun import_graph_def_results_missing_unused_input_mappings = TF_ImportGraphDefResultsMissingUnusedInputMappings(results : X_ImportGraphDefResults*,
    number_of_missing_unused_input_mappings : LibC::Int*,
    source_names : LibC::Char***,
    source_indexes : LibC::Int**
  ) : Void

  fun delete_import_graph_def_results = TF_DeleteImportGraphDefResults(results : X_ImportGraphDefResults) : Void

  fun graph_import_graph_def_with_results = TF_GraphImportGraphDefWithResults(graph : X_Graph*,
    graph_def : Buffer*,
    options : X_ImportGraphDefOptions*,
    status : X_Status*
  ) : X_ImportGraphDefResults*

  fun graph_import_graph_def_with_return_outputs = TF_GraphImportGraphDefWithReturnOutputs(graph : X_Graph*,
    graph_def : Buffer*,
    options : X_ImportGraphDefOptions*,
    return_outputs : Output*,
    number_of_return_outputs : LibC::Int,
    status : X_Status*
  ) : Void

  fun graph_import_graph_def = TF_GraphImportGraphDef(graph : X_Graph*,
    graph_def : Buffer*,
    options : X_ImportGraphDefOptions*,
    status : X_Status*
  ) : Void

  fun graph_copy_function = TF_GraphCopyFunction(graph : X_Graph*,
    function : X_Function*,
    gradient : X_Function*,
    status : X_Status*
  ) : Void

  fun graph_num_of_functions = TF_GraphNumFunctions(graph : X_Graph*) : LibC::Int

  fun graph_get_functions = TF_GraphGetFunctions(graph : X_Graph*,
    functions : X_Function*,
    max_functions : LibC::Int,
    status : X_Status*
  ) : LibC::Int

  fun operation_to_node_def = TF_OperationToNodeDef(operation : X_Operation*,
    output_node_def : Buffer*,
    status : X_Status*
  ) : Void

  fun graph_to_function = TF_GraphToFunction(graph : X_Graph*,
    fn_name : LibC::Char*,
    append_hash_to_fn_name : LibC::Char,
    number_of_operations : LibC::Int,
    operations : X_Operation*,
    number_of_inputs : LibC::Int,
    inputs : Output*,
    number_of_outputs : LibC::Int,
    outputs : Output*,
    output_names : LibC::Char*,
    options : X_FunctionOptions*,
    description : LibC::Char,
    status : X_Status*
  )

  fun function_name = TF_FunctionName(func : X_Function*) : LibC::Char*

  fun function_to_function_def = TF_FunctionToFunctionDef(func : X_Function*,
    output_func_def : Buffer*,
    status : X_Status*
  ) : Void

  fun import_function_def = TF_FunctionImportFunctionDef(proto : Void*,
    proto_len : LibC::SizeT,
    status : X_Status*
  ) : X_Function*

  fun function_set_attr_value_proto = TF_FunctionSetAttrValueProto(func : X_Function*,
    attr_name : LibC::Char*,
    proto : Void*,
    proto_len : LibC::SizeT,
    status : X_Status*
  ) : Void

  fun function_get_attr_value_proto = TF_FunctionGetAttrValueProto(func : X_Function*,
    attr_name : LibC::Char*,
    output_attr_value : Buffer*,
    status : X_Status*
  ) : Void

  fun delete_function = TF_DeleteFunction(func : X_Function*) : Void

  fun try_evaluate_constant = TF_TryEvaluateConstant(graph : X_Graph*,
    output : Output,
    result : X_Tensor**,
    status : X_Status*
  ) : LibC::Char
end