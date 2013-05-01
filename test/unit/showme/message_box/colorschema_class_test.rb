require 'test_helper'

class TestMessageBox < MiniTest::Unit::TestCase
  def test_yellow_colorscheme
    Rack::Showme::Options.colorscheme= "yellow"
    @message_box = Rack::Showme::MessageBox.new(Rack::Showme::Options)

    assert_equal(@message_box.colorscheme_class, "rack-show-me-colorscheme-yellow")
  end

  def test_red_colorscheme
    Rack::Showme::Options.colorscheme= "red"
    @message_box = Rack::Showme::MessageBox.new(Rack::Showme::Options)

    assert_equal(@message_box.colorscheme_class, "rack-show-me-colorscheme-red")
  end

  def test_green_colorscheme
    Rack::Showme::Options.colorscheme= "green"
    @message_box = Rack::Showme::MessageBox.new(Rack::Showme::Options)

    assert_equal(@message_box.colorscheme_class, "rack-show-me-colorscheme-green")
  end
  def test_invalid_colorscheme
    Rack::Showme::Options.colorscheme= "apple"
    @message_box = Rack::Showme::MessageBox.new(Rack::Showme::Options)

    # Yellow is the default colorscheme
    assert_equal(@message_box.colorscheme_class, "rack-show-me-colorscheme-yellow")
  end
end
