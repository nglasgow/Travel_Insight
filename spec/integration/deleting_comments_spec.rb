require 'spec_helper'

feature 'Deleting comments' do
  let!(:post) { Factory(:post) }
  let!(:comment) { Factory(:comment, :post => post) }

  before do
    visit '/'
    click_link post.title
    click_link comment.title
  end

  #scenario "Deleting a comment" do
  #  click_link "Delete Comment"
  #  page.should have_content("Comment has been deleted.")
  #  page.current_url.should == post_url(post)
  #end
end
