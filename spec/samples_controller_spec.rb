require 'rails_helper'

RSpec.describe SamplesController, :type => :controller do
  describe "no login done" do
    before :each do
      login_with nil
    end

    it "should be redirected to login screen" do
      get :index
      expect( response ).to redirect_to( new_user_session_path )
    end

    it "should be able to see the index page if he's logged in" do
      login_with create( :user )
      get :index
      expect( response ).to render_template( :index )
    end

  end
end
