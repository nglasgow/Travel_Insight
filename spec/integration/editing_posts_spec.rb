require 'spec_helper'

feature "Editing Posts" do
  scenario "Updating a post" do
    Factory(:post, :title => "TextMate 2")
    visit "/"
    click_link "TextMate 2"
    click_link "Edit Post"
    fill_in "Title", :with => "TextMate 2 beta"
    click_button "Update Post"
    page.should have_content("Post has been updated.")
  end
end
