require 'spec_helper'

describe "UserPages" do
		let(:user) { FactoryBot.create(:user) }
  
	subject { page }

	describe "profile page" do
		before { visit user_path(user) }

 		it '1' do
 			user
 			should have_selector('h1',    text: user.name)
 		end
  	it { should have_selector('title', text: user.name) }
	end	

	describe "signup page" do
		before {visit signup_path}

		it { should have_selector('h1',		text: 'Sign up') }
		it { should have_selector('title',		text: 'Sign up') }
	end
end