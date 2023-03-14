require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it 'Saves the user' do
      @user = User.new({ first_name: "Giordano",
        last_name: "Temple",
        email: "gio@email.com",
        password: "abc123",
        password_confirmation: "abc123"
        })
      @user.save
      expect(User.find_by(id: 1)).not_to be_nil
    end
    it "Does not save the user when password's don't match" do
      @user = User.new({ first_name: "Giordano",
        last_name: "Tmofrpemple",
        email: "gfmromfio@email.com",
        password: "arfimros123",
        password_confirmation: "different-password"
        })
      @user.save
      expect(User.find_by(id: 2)).to be_nil
    end
    it "Does not save the user when password's don't match" do
      @user = User.new({ first_name: "Giordano",
        last_name: "moretest",
        email: "testest@email.com",
        password: "ab",
        password_confirmation: "ab"
        })
      @user.save
      expect(User.find_by(id: 2)).to be_nil
    end
  end

  describe '.authenticate_with_credentials' do
    it 'Logs in user with extra spaces' do
      @user2 = User.new({ first_name: "Giordano",
        last_name: "Temple",
        email: "gio2@email.com",
        password: "abc123",
        password_confirmation: "abc123"
        })
      @user2.save
      @user2_login = @user2.authenticate_with_credentials(" gio2@email.com ", @user2.password)
      expect(user_login).not_to be_nil
    end
  end
end
