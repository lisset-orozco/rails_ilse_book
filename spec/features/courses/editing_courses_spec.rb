# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Users can edit courses', type: :feature do
  let!(:course) { FactoryBot.create(:course) }

  scenario 'with valid attributes' do
    visit '/'
    click_link course.name
    click_link 'Edit'
    fill_in 'Name', with: 'Advanced Mathematics'
    click_button 'Save'
    expect(page).to have_content 'The course has been updated.'
  end
end
