class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  # original
  def initialize_0(brand)
    @brand = brand
    BRANDS << brand
    BRANDS.uniq!
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  # official solution
  def initialize(brand)
    @brand = brand
    BRANDS << brand unless BRANDS.include?(brand)
  end
end