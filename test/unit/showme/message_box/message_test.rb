require 'test_helper'

class TestMessageBox < MiniTest::Unit::TestCase
  def setup
    Rack::Showme::Options.message = "Hello morros"
    @message_box = Rack::Showme::MessageBox.new(Rack::Showme::Options)
  end

  def test_message
    assert_equal(@message_box.message, "Hello morros")
  end
end
