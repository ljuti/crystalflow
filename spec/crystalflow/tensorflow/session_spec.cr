require "../../spec_helper"

module Crystalflow
  module Tensorflow
    Spec2.describe Session do
      describe "#connect" do

        it "connects and initializes a session" do
          status = LibTensorflow.new_status()
          # session = described_class.new
          # status = session.connect
          code = LibTensorflow.get_code(status)
          puts code
          # expect(status.code) == :ok

          graph = LibTensorflow.new_graph()
          puts graph

          desc = LibTensorflow.new_operation(graph, "Const", "Variable/initial_variable")
          expect(desc).to be_a(LibTensorflow::X_OperationDescription)
        end

        it "foo" do
          options = LibTensorflow.new_session_options
          puts options
          LibTensorflow.delete_session_options(options)
          puts options
        end
      end
    end
  end
end