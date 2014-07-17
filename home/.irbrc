begin
  # load wirble
  require 'wirble'

  # start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => error
  warn "Couldn't load Wirble: #{error}"
end
