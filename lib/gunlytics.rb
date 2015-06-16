class Gunlytics
  def self.hi
    puts "Hello world!"
    p Gunlytics::Auth.test
  end
end
require 'gunlytics/auth'
Gunlytics.hi