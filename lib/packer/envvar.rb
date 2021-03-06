# Encoding: utf-8

module Packer
  class EnvVar
    def method_missing(method_name, *args)
      "{{env `#{method_name}`}}"
    end


    def respond_to_missing?(method_name, include_private: false)
      true
    end

    def respond_to?(symbol, include_private: false)
      # We literally respond to everything...
      true
    end
  end
end
