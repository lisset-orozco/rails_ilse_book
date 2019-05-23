# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Users can edit courses', type: :feature do
  let!(:course) { FactoryBot.create(:course) }

  before do
    admin = FactoryBot.create(:admin)
    visit '/admins/sign_in'
    fill_in 'admin_email', with: admin.email
    fill_in 'admin_password', with: admin.password
    click_button 'Log in'
  end

  scenario 'with valid attributes' do
    visit '/'
    click_link course.name
    click_link 'Edit'
    fill_in 'Name', with: 'Advanced Mathematics'
    click_button 'Save'
    expect(page).to have_content 'The course has been updated.'
  end

  scenario 'with invalid attributes' do
    visit '/'
    click_link course.name
    click_link 'Edit'
    fill_in 'Name', with: ''
    click_button 'Save'
    expect(page).to have_content 'The course has not been updated.'
  end
end
