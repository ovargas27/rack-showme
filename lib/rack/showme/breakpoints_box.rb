module Rack
  class Showme
    class BreakpointsBox < MessageBox
      def initialize(options)
        @colorscheme = options.colorscheme
      end

      def html
        "<div id=\"rack-show-me-breakpoints\" class=\"#{colorscheme_class}\"></div>"
      end
    end
  end
end
