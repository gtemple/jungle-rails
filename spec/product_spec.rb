require "rails_helper"

RSpec.describe Product, type: :model do

  describe 'Validations' do
    it 'must have a name' do
      @category = Category.new
      @product = Product.new({
        name:  'Cliff Collard',
        description: "hello",
        quantity: 23,
        category: @category,
        price: 79.99
      })
      expect (@product)to be_valid
    end
  end
end
