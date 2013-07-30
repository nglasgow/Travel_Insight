require 'spec_helper'

feature "Editing comments" do
  let!(:post) { Factory(:post) }
  let!(:comment) { Factory(:comment, :post => post) }

  before do
    visit '/'
    click_link post.title
    click_link comment.title
    click_link "Edit Comment"
  end

  scenario "Updating a comment" do
    fill_in "Title", :with => "Make it really shiny!"
    click_button "Update Comment"
    #page.should have_content "Comment has been updated."
    #within("#ticket h2") do
    #  page.should have_content("Make it really shiny!")
    end
    #page.should_not have_content comment.title
  #end

  scenario "Updating a comment with invalid information" do
    fill_in "Title", :with => ""
    click_button "Update Comment"
    page.should have_content("Comment has not been updated.")
  end
end
