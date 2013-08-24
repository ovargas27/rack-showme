module Rack
  class Showme 
    module Options
      @@message = "[Add a Message]"
      @@colorscheme = "yellow"
      @@show_breakpoints = nil

      class << self
        def message
          @@message
        end

        def message=(value)
          @@message= value
        end

        def colorscheme
          @@colorscheme
        end

        def colorscheme=(value)
          @@colorscheme= value
        end

        def show_breakpoints=(value)
          @show_breakpoints = value
        end

        def show_breakpoints
          @show_breakpoints
        end
      end      
    end
  end
end
