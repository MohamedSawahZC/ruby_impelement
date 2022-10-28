#Super class
class Car
        @@no_of_cars=0
           # constructor method
        def initialize(id,name,price)
            @id=id
            @name=name
            @price=price
        end
        def display_details
            puts "ID: #@id"
            puts "Name: #@name"
            puts "Price: #@price"
        end
        #count how many times this method called and print it
        def total_no_of_cars
            @@no_of_cars += 1
            puts "Total number of customers: #@@no_of_cars"
        end
        def printId
            @id
        end
        def setId(value)
            @id=value
        end

end

#Subclass of Car
class Car2 < Car
    def printSubclass
        puts "Subclass"
    end
end


cars = [Car.new("1","Ford","10K"),Car.new("2","Lancer","5K")]
cars[0].setId(0)

fors = Car2.new("1","Hook","10K $")
fors.setId(1)

fors.printId

fors.printSubclass


