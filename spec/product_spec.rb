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
  end
end
