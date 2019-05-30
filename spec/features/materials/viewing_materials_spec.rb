# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Users can see materials within courses', type: :feature do
  let!(:course) { FactoryBot.create(:course) }
  let!(:material) { FactoryBot.create(:material, course: course) }
  let!(:user) { FactoryBot.create(:user) }

  before do
    visit '/'
    click_link 'Step in'
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Log in'
  end

  scenario 'see details of the material' do
    visit '/'
    click_link course.name
    click_link material.name
    expect(page.current_url).to eq course_material_url(course, material)
    expect(page).to have_content(material.name)
  end
end
