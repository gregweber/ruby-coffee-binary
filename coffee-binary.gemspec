Gem::Specification.new do |s|
  s.name      = 'coffee-binary'
  s.version   = '0.0.1'
  s.date      = '2012-03-16'

  s.homepage    = "http://github.com/gregweber/ruby-coffee-binary"
  s.summary     = "Ruby CoffeeScript Compiler"
  s.description = <<-EOS
    Ruby CoffeeScript is a bridge to the JS CoffeeScript compiler.
  EOS

  s.files = [
    'lib/coffee-script.rb',
    'lib/coffee_script.rb',
    'LICENSE',
    'README.md'
  ]

  s.authors = ['Greg Weber']
  s.email   = 'greg@gregweber.info'
end
