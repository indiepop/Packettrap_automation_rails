#when a feature is begin or end ,what they do .

require "pathname"
Before do
  $root = Pathname.new(File.dirname(__FILE__)).parent.parent.realpath.to_s     # so need pathname.rb  #to get the root name
  $info = YAML.load_file("#{$root}/features/packettrap_resources/info.yml")
end


=begin
at_exit do
  # Be sure to close the browser if it's still open
  if $browser
    $browser.close
    $browser = nil
  end
end
=end