module Rack
  class Showme 
    module Options
      @@message = "[Add a Message]"
      @@colorscheme = "yellow"

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
      end      
    end
  end
end
