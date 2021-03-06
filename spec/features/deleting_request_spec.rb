require 'spec_helper'

describe 'deleting requests' do
	it 'removes the request' do
		create(:request)

		visit '/requests'
		click_link 'Delete'

		expect(page).to have_content 'Request deleted'
	end
end

	describe 'attempting to delete posts' do 
		before { create(:request)} 
		xit 'not logged in' do
			visit '/requests'
			click_link 'Delete'

			expect(page).to have_content 'Sign in'
		end

		
	end

