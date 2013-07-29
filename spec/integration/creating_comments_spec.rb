require 'spec_helper'

feature "Creating Comments" do
  before do
  Factory(:post, :title => "Internet Explorer")
  visit '/'
  click_link "Internet Explorer"
  click_link "New Comment"
end

scenario "Creating a comment" do
  fill_in "Title", :with => "Non-standards compliance"
  fill_in "Description", :with => "My pages are ugly!"
  click_button "Create Comment"
  page.should have_content("Comment has been created.")
end

scenario "Creating a comment without valid attributes fails" do
  click_button "Create Comment"
  page.should have_content("Comment has not been created.")
  page.should have_content("Title can't be blank")
  page.should have_content("Description can't be blank")
  end
end
