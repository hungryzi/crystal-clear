require 'spec_helper'

describe 'on homepage' do
  it 'user can add text moment' do
    visit root_path
    page.should have_content 'Moments'

    fill_in "Writer", with: 'Zi'
    fill_in "Content", with: 'i am having fun\n'

    click_on 'Remember'

    page.should have_content "Zi"
    page.should have_content "i am having fun"
  end
end
