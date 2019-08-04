class Animal
  def eat
    puts "nyam nyam"
  end
end




class Cat < Animal
  def meow
    puts "meow"
  end
end


animal=Animal.new
animal.eat
