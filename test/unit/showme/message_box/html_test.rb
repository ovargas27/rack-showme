require 'test_helper'

class TestMessageBox < MiniTest::Unit::TestCase
  def setup
    @message_box = Rack::Showme::MessageBox.new(Rack::Showme::Options)
  end

  def test_html_include_showme_id
    assert_match @message_box.html, /id=\"rack-show-me-message-box\"/
  end
  
  def test_html_include_colorscheme_class
    assert_match @message_box.html, /class=\"rack-show-me-colorscheme/
  end
end
