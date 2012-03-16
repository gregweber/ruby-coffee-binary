module CoffeeScript
  class << self
    def coffee
      @coffee ||= begin
        c = ENV['COFFEE_BINARY_PATH']
        c = "coffee" if !c or c.empty?
        c
      end
    end
    def engine; end

    def engine=(engine); end

    def version; `#{coffee} --version` end

    # Compile a script (String or IO) to JavaScript.
    def compile(script, options = {})
      script = script.read if script.respond_to?(:read)

      bare_or_contracts = if options[:bare] || options[:no_wrap] then "--bare" else "" end
      
      contracts = ENV['CONTRACTS_COFFEE_ENABLED']
      if contracts && !contracts.empty?
        bare_or_contracts = "--contracts"
      end

      open("|#{coffee} #{bare_or_contracts} -c --stdio", 'w+') do |fh|
        fh.puts(script)
        fh.close_write
        return fh.read.chomp
      end
    end
  end
end
