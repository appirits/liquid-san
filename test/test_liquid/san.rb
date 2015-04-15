require 'minitest_helper'

module TestLiquid
  class San < Minitest::Test
    class SomeModel
      include Liquid::San
      attr_accessor :template

      def initialize(template)
        @template = template
      end
    end

    def test_some_model
      model = SomeModel.new('Hello {{name}} world!')
      assert { model.liquidize(:template, {'name' => 'Liquid'}) == 'Hello Liquid world!' }
    end


    def test_filter
      model = SomeModel.new('Hello {{name | reverse}} world!')
      assert { model.liquidize(:template, {'name' => 'Liquid'}) == 'Hello diuqiL world!' }
    end

  end
end