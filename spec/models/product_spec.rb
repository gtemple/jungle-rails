require "rails_helper"

RSpec.describe Product, type: :model do

  describe 'Validations' do
    it 'Is valid with all fields' do
      @category = Category.new
      @product = Product.new({
        name:  'Cliff Collard',
        description: "hello",
        quantity: 23,
        category: @category,
        price: 79.99
      })
      expect(@product).to be_valid
    end

    it "is not valid without a name" do
      @category = Category.new
      @product = Product.new({
        name:  nil,
        description: "hello",
        quantity: 23,
        category: @category,
        price: 79.99
      })
      expect(@product).to_not be_valid
    end

    it "is not valid without a price" do
      @category = Category.new
      @product = Product.new({
        name:  "Gio",
        description: "hello",
        quantity: 23,
        category: @category,
        price_cents: nil
      })
      expect(@product).to_not be_valid
    end

    it "is not valid without a quantity" do
      @category = Category.new
      @product = Product.new({
        name:  "Gio",
        description: "hello",
        quantity: nil,
        category: @category,
        price: 100.00
      })
      expect(@product).to_not be_valid
    end

    it "is not valid without a category" do
      @product = Product.new({
        name:  "Gio",
        description: "hello",
        quantity: 22,
        category: nil,
        price: 100.00
      })
      expect(@product).to_not be_valid
    end
    
  end
end
