module Dino
    module Components
        class BasicIn < BaseComponent
            UP = "01"
            DOWN = "00"
            def after_initialize(options={})
                @down_callbacks, @up_callbacks, @state = [], [], UP
                self.board.add_digital_hardware(self)
                self.board.start_read
                puts("Pin #{self.pin} is now a digital input")
            end

            def down(&callback)
                @down_callbacks << callback
            end

            def up(&callback)
                @up_callbacks << callback
            end

            def update(data)
                return if data == @state
                @state = data
                case data
                when UP
                    mode_up
                when DOWN
                    mode_down
                else
                    return
                end
            end

            private
            def mode_up
                @up_callbacks.each do |callback|
                    callback.call
                end
            end
            def mode_down
                @down_callbacks.each do |callback|
                    callback.call
                end
            end
        end
    end
end