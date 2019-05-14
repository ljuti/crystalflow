module Crystalflow
  module Tensorflow
    class Session

      def connect
        status = LibTensorflow.new_status()
        graph = LibTensorflow.new_graph()
        session = LibTensorflow.new_session(graph, LibTensorflow.new_session_options, status)
        status
      end
      
    end
  end
end