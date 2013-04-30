module Rack
  class Showme
    class MessageBox
      def initialize(options)
        @message = options.message
        @colorscheme = options.colorscheme
      end

      def html
        "<div id=\"rack-show-me-message-box\" class=\"#{colorscheme_class}\">#{message}</div>"
      end

      def message
        @message
      end

      def colorscheme_class
        case @colorscheme
        when "yellow"
          "rack-show-me-colorscheme-yellow"
        when "red"
          "rack-show-me-colorscheme-red"
        when "green"
          "rack-show-me-colorscheme-green"
        else
          "rack-show-me-colorscheme-yellow"
        end
      end 
    end
  end
end

