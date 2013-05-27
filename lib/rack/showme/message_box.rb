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
        @colors = %W[yellow red green]
        @colors.include?(@colorscheme) ? custom_class_name : default_class_name
      end 

      private
      def default_class_name
        "rack-show-me-colorscheme-#{@colors.first}"
      end

      def custom_class_name
        "rack-show-me-colorscheme-#{@colorscheme}"
      end
    end
  end
end

