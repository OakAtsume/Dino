module Dino
    module Components
        class Template < BaseComponent
            # This is a Template. It means you can directly do actions such as set pin mode, write analog, write digitaly.
            def after_initialize(options={})
            end

            def setMode(mode)
                set_pin_mode(mode)
            end

            def writeAnalog(value)
                analog_write(value)
            end

            def writeDigital(value)
                digital_write(value)
            end
        end
    end
end
