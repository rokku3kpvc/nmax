module Nmax
  # Returns @limit number of max integers from @stdin
  class Counter
    def initialize(limit)
      args_validation(limit)

      @limit = limit.to_i
    end

    def run
      ARGV.shift # shift first @limit argument passing to the script
      ARGF.readlines # readlines from file-arguments of from STDIN stream
          .map { |l| l.scan(/\d+/) }
          .flatten
          .map(&:to_i)
          .uniq
          .max(@limit)
    end

    private

    def args_validation(limit)
      raise ArgumentTypeError.new(limit) if (/^\d+$/ =~ limit.to_s).nil?
      raise ArgumentValueError.new(limit) if limit.to_i < 1
    end
  end
end