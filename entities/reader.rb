class Reader
   attr_reader :title, :author

   def initialize(name:, email:, city:, street:, house:)
      @name = name
      @email = email
      @city = city
      @street = street
      @house = house
   end
end