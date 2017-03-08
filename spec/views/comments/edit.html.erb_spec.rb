require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :post_id => 1,
      :author_name => "MyString",
      :author_email => "MyString",
      :content => "MyText",
      :author_ip => "MyString",
      :approved => false,
      :parent_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_post_id[name=?]", "comment[post_id]"

      assert_select "input#comment_author_name[name=?]", "comment[author_name]"

      assert_select "input#comment_author_email[name=?]", "comment[author_email]"

      assert_select "textarea#comment_content[name=?]", "comment[content]"

      assert_select "input#comment_author_ip[name=?]", "comment[author_ip]"

      assert_select "input#comment_approved[name=?]", "comment[approved]"

      assert_select "input#comment_parent_id[name=?]", "comment[parent_id]"

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"
    end
  end
end
