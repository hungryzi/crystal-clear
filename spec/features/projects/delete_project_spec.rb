require 'spec_helper'

describe "on homepage" do

  describe "projects" do

    it "user can delete a project", js: true do
      existing_project = create(:project, name: 'Crystal Clear')

      visit root_path
      page.should have_content('Projects')

      click_on 'Projects'
      page.should have_content 'Crystal Clear'

      click_on 'Delete'
      page.driver.browser.switch_to.alert.accept

      page.should_not have_content 'Crystal Clear'
    end

  end

end
