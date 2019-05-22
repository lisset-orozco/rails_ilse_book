# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Admins can create courses', type: :feature do
  let(:course) { FactoryBot.build(:course) }

  before do
    admin = FactoryBot.create(:admin)
    visit '/'
    click_link 'Step in'
    fill_in 'admin_email', with: admin.email
    fill_in 'admin_password', with: admin.password
    click_button 'Log in'
  end

  scenario 'with valid attributes' do
    visit '/'
    click_link 'New Course'
    fill_in 'Name', with: course.name
    fill_in 'Description', with: course.description
    click_button 'Save'

    expect(page).to have_content 'The course has been created.'
  end

  scenario 'with invalid attributes' do
    visit '/'
    click_link 'New Course'
    click_button 'Save'
    expect(page).to have_content 'The course has not been created.'
  end
end
