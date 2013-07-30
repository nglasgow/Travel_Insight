require 'spec_helper'

feature "Deleting posts" do
  scenario "Deleting a posts" do
    Factory(:post, :title => "TextMate 2")
    visit "/"
    click_link "TextMate 2"
    click_link "Delete Post"
    page.should have_content("Post has been deleted.")
    visit "/"
    page.should_not have_content("TextMate 2")
  end
end
