# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Admins can create materials within courses', type: :feature do
  let!(:course) { FactoryBot.create(:course) }

  scenario 'with valid attributes' do
    visit '/'
    click_link course.name
    click_link 'Add material'
    fill_in 'Name', with: 'Presentation PPT, Pitágoras'
    fill_in 'Description', with: 'Presentation of the first class'
    fill_in 'File', with: 'www.drive.com/file'
    click_button 'Save'

    expect(page).to have_content 'The file has been saved.'
  end
end
