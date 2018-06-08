require 'pry'

class Dog
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.each do |instance|
      puts instance.name
    end
  end

  def self.clear_all
    @@all.clear
  end

end

 Dog.new("Pluto")
 Dog.new("Fido")
Dog.new("Maddy")

puts Dog.all
