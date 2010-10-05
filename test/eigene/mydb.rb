require 'rubygems'
require 'active_record'
ActiveRecord::Base.establish_connection(
  :adapter => 'mysql',
  :host => 'localhost',
  :database => 'Jobs',
  :user => 'root',
  :password => 'phpmeadmin'
)

class Beruf < ActiveRecord::Base
  validates_presence_of :when
end

beruf = Beruf.find(:first)
puts "Ein Beruf ist #{beruf.name} mit der id #{beruf.id}"