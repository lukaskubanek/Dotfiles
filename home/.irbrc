begin
  # Load wirble
  require 'wirble'

  # Start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => error
  warn "Couldn't load Wirble: #{error}"
end
