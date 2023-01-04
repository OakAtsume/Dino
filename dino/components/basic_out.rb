module Dino
  module Components
    class BasicOut < BaseComponent
		def after_initialize(options={})
			set_pin_mode(:out)
		end
		def write(value)
			digital_write(value)
		end
	end
  end
end
