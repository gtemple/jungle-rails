require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    @user = User.create({ first_name: "Giordano",
      last_name: "Temple",
      email: "gio@email.com",
      password: "abc123",
      password_confirmation: "abc123"
      })

    it 'Saves the user' do
      @user.save
      expect(User.find_by(id: 1)).not_to be_nil
    end
  end
end
