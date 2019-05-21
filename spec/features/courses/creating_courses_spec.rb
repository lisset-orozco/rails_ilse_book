# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Admins can create courses', type: :feature do
  let(:course) { FactoryBot.build(:course) }

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
