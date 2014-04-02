require 'spec_helper'

describe "on homepage" do

  describe "projects" do

    it "user can delete new project", js: true do
      visit root_path

      page.should have_content('Projects')

      click_on 'Projects'

      fill_in "Name", with: "Crystal Clear"
      fill_in "What", with: "everything which is happening in office"
      fill_in "Who", with: "Zi & Ivan"
      fill_in "Where", with: "sunny Singapore"
      fill_in "When", with: "today"
      fill_in "How", with: "Rails"

      click_on 'Save'
      page.should have_content 'Crystal Clear'

      click_on 'Delete'
      page.driver.browser.switch_to.alert.accept

      page.should_not have_content 'Crystal Clear'
    end

  end

end
