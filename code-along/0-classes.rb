# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

food_tacos = "tacos"
puts food_tacos.upcase

food_sushi = "sushi"
puts food_sushi.upcase

# String Class

# String Methods

class Dog

    def speak
        puts "Woof"
    end 
end 

jenkins = Dog.new
jenkins.speak