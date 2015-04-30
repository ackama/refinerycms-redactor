require 'spec_helper'

module Refinery
  module Redactor
    describe 'visual editor', type: :feature, js: true do
      let!(:test_page) do
        test_page = FactoryGirl.create(:page)
         # we need page parts so that there's a visual editor
        Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
          test_page.parts.create(:title => default_page_part, :body => nil, :position => index)
        end

        test_page
      end

      refinery_login_with :refinery_user

      it "has a redactor editor for the page part" do
        visit refinery.edit_admin_page_path(test_page)
        expect(page).to have_selector '.redactor-box'
      end
    end
  end
end



