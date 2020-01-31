class Shoes 
  def initialize (Shoes)
    @Shoes= Shoes
  end
  
  attr_accessor :brands, :Shoe
  attr_reader :brands
  BRANDS = []
      brands = ["Uggs", "Rainbow"]
      brands.each do |brand|
        Shoe.new(brand)
      end

      brands.each do |brand|
        expect(Shoe::BRANDS).to include(brand)
      end
      
      Shoe::BRANDS.clear
      brands = ["Uggs", "Rainbow", "Nike", "Nike"]
      brands.each do |brand|
        Shoe.new(brand)
      end

      expect(Shoe::BRANDS.size).to eq(3)
    end
  end
end