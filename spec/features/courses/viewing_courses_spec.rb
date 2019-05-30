# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Users can see courses', type: :feature do
  let!(:course) { FactoryBot.create(:course) }
  let!(:user) { FactoryBot.create(:user) }

  scenario 'see details of the course' do
    visit '/'
    click_link 'Step in'
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Log in'
    click_link course.name
    expect(page.current_url).to eq course_url(course)
    expect(page).to have_content(course.name)
  end
end
