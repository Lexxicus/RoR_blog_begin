# frozen_string_literal: true

require "rails_helper"

feature "Article Edit" do

  before(:each) do
    sign_up
    new_article
  end

  scenario "allows user to edit article" do
    visit '/articles/1/edit'

    fill_in :article_title, with: 'Edited title'
    fill_in :article_text, with: 'Edited text'
    click_button 'Save Article'

    expect(page).to have_content 'Edited title'
  end

end