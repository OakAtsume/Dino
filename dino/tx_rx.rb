module Dino
  module TxRx
    require_relative 'tx_rx/base'
    require_relative 'tx_rx/serial'
    require_relative 'tx_rx/tcp'
    def self.new(options={})
      self::Serial.new(options)
    end
  end
end