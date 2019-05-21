# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Users can see courses', type: :feature do
  let!(:course) { FactoryBot.create(:course) }

  scenario 'see details of the course' do
    visit '/'
    click_link course.name
    expect(page.current_url).to eq course_url(course)
    expect(page).to have_content(course.name)
  end
end
