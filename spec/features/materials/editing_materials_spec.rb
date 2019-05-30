# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Admins can edit materials', type: :feature do
  let!(:course) { FactoryBot.create(:course) }
  let!(:material) { FactoryBot.create(:material, course: course) }

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
    click_link material.name
    click_link 'Edit'
    fill_in 'Name', with: 'Advanced Mathematics PPT'
    click_button 'Save'
    expect(page).to have_content 'The material has been updated.'
  end
end
