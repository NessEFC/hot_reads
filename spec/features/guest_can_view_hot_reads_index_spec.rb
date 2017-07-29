require 'rails_helper'

RSpec.feature('A guest visits the home page') do
  scenario('and sees a list of hot reads') do
    reads = create_list(:read, 10)
    old_read = create(:read, link_url:  "http://website11.com", count: 11, updated_at: 3.days.ago)

    visit root_path

    expect(page).to have_content('Hot Reads!')
    expect(page).to have_selector('p', count: 10)

    within 'p:first' do
      expect(page).to have_content(reads[9].link_url)
    end

    within 'p:last' do
      expect(page).to have_content(reads[0].link_url)
    end

    expect(page).to_not have_content(old_read.link_url)
  end
end
