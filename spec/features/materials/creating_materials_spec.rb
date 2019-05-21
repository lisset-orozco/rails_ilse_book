# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Admins can create materials within courses', type: :feature do
  let!(:course) { FactoryBot.create(:course) }
  let!(:material) { FactoryBot.build(:material, course: course) }

  scenario 'with valid attributes' do
    visit '/'
    click_link course.name
    click_link 'Add material'
    fill_in 'Name', with: material.name
    fill_in 'Description', with: material.description
    fill_in 'File', with: material.file
    click_button 'Save'

    expect(page).to have_content 'The material has been saved.'
  end

  scenario 'with invalid attributes' do
    visit '/'
    click_link course.name
    click_link 'Add material'
    click_button 'Save'

    expect(page).to have_content 'The material has not been saved.'
  end
end
