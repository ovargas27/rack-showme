module Rack
  class Showme
    class MessageBox
      COLORS = %w[yellow red green].freeze
      PREFIX = 'rack-show-me-colorscheme'

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
        COLORS.include?(@colorscheme) ? custom_class_name : default_class_name
      end 

      private
      def default_class_name
        "#{PREFIX}-#{COLORS.first}"
      end

      def custom_class_name
        "#{PREFIX}-#{@colorscheme}"
      end
    end
  end
end

