require "nmax/version"
require "nmax/exceptions"
require "nmax/counter"

# Base module that runs the script
module Nmax
  module_function

  def call(n_arg)
    Counter.new(n_arg).run
  end
end
