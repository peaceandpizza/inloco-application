require 'rails_helper'

RSpec.describe RegistrationsController, :type => :controller do

  describe 'should for inconsistencies within registration parameters' do

    it 'should warn the user his password is too short' do
      password = "1234"
      expect { user = create( :user, password: password, password_confirmation: password ) }.to raise_exception(ActiveRecord::RecordInvalid)
    end

    it 'should warn the user his passwords do not match' do
      password = "12345678"
      password_confirmation = "1234567889"
      expect { user = create( :user, password: password, password_confirmation: password_confirmation ) }.to raise_exception(ActiveRecord::RecordInvalid)
    end

    it 'should warn the user that the email is already in use' do
      email = "test@test.com"
      user = create( :user, email: email)
      expect { user2 = create( :user, email: email) }.to raise_exception(ActiveRecord::RecordInvalid)
    end
  end
end