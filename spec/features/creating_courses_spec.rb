# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Admins can create projects', type: :feature do
  scenario 'with valid attributes' do
    visit '/'
    click_link 'New Course'
    fill_in 'Name', with: 'Mathematics'
    fill_in 'Description', with: 'It´s a basic math course'
    click_button 'Save'

    expect(page).to have_content 'The course has been created.'
  end
end
