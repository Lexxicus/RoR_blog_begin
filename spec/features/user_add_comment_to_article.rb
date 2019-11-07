frozen_string_literal: true

require "rails_helper"

feature "Add Comment To Article" do

  before(:each) do
    sign_up
    new_article
  end

  scenario "allows user to edit article" do
    visit '/articles/1'

    fill_in :comment_body, with: 'New comment'
    click_button 'Create Comment'

    expect(page).to have_content 'New comment'
  end

end