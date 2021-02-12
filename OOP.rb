#class syntax
class NewClass
    # Class stuff inside
end

class Person 

    def initialize

    end


end

class Car

    def initialize(make, model)
        @make = make
        @model = model
        #tells ruby that whenever we create a Car, it has to have a make and a model
    end

    def make
        @make
    end

    def model
        @model
    end
end

elon_musk = Car.new("tesla", "model_s") #instantiating a car object 
puts(elon_musk.make)
print(elon_musk.model)

    
=begin 
our NewClass has the ability to create new Ruby 
objects of class NewClass

The initialize method simply 'boots' up our class

We initialize instance variables using the '@' symbol, this signifies
that the variable is an instance of the class, '$' signifies a global variable
'@@' is a class variable

=end
