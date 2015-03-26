require "paperclip"

unless Rails.env.production?
  # Windows
  Paperclip.options[:command_path] = 'c:\Program Files\ImageMagick-6.9.0-Q16'
  Paperclip.options[:swallow_stderr] = false
end





