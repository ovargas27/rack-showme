require 'test_helper'

class TestMessageBox < MiniTest::Unit::TestCase
  def setup
    @message_box = Rack::Showme::MessageBox.new(Rack::Showme::Options)
  end

  def test_html_include_showme_id
    assert_match /id=\"rack-show-me-message-box\"/, @message_box.html
  end
  
  def test_html_include_colorscheme_class
    assert_match /class=\"rack-show-me-colorscheme/, @message_box.html
  end
end
