# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Admins can delete courses', type: :feature do
  let!(:course) { FactoryBot.create(:course) }

  scenario 'successfully' do
    visit '/'
    click_link course.name
    click_link 'Delete'
    expect(page).to have_content 'The course has been removed.'
    expect(page.current_url).to eq courses_url
    expect(page).to have_no_content course.name
  end
end
