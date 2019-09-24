module Nmax
  class NmaxError < StandardError; end

  # Raised when provided argument is < 1
  class ArgumentValueError < NmaxError
    def initialize(arg)
      super("#{arg} should be greater than 0!")
    end
  end

  # Raised when provided argument is not integer
  class ArgumentTypeError < NmaxError
    def initialize(arg)
      super("#{arg} should be integer!")
    end
  end
end