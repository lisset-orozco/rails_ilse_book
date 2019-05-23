# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Admins can delete courses', type: :feature do
  let!(:course) { FactoryBot.create(:course) }
  let!(:material) { FactoryBot.create(:material, course: course) }

  before do
    admin = FactoryBot.create(:admin)
    visit '/admins/sign_in'
    fill_in 'admin_email', with: admin.email
    fill_in 'admin_password', with: admin.password
    click_button 'Log in'
  end

  scenario 'successfully' do
    visit '/'
    click_link course.name
    click_link material.name
    click_link 'Delete'
    expect(page).to have_content 'The material has been removed.'
    expect(page.current_url).to eq course_url(course)
    expect(page).to have_no_content material.name
  end
end
