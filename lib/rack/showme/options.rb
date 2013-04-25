module Rack
  class Showme 
    module Options
      @@message = "[Add a Message]"

      class << self
        def message
          @@message
        end

        def message=(value)
          @@message= value
        end
      end      
    end
  end
end
