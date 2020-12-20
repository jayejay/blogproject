# frozen_string_literal: true
# require 'rails_helper'
#
# RSpec.describe "users/edit", type: :view do
#   before(:each) do
#     @user = assign(:user, User.create!(
#       :first_name => "MyString",
#       :last_name => "MyString",
#       :nick_name => "MyString",
#       :admin => "MyString",
#       :moderator => "MyString"
#     ))
#   end
#
#   it "renders the edit user form" do
#     render
#
#     assert_select "form[action=?][method=?]", user_path(@user), "post" do
#
#       assert_select "input#user_first_name[name=?]", "user[first_name]"
#
#       assert_select "input#user_last_name[name=?]", "user[last_name]"
#
#       assert_select "input#user_nick_name[name=?]", "user[nick_name]"
#
#       assert_select "input#user_admin[name=?]", "user[admin]"
#
#       assert_select "input#user_moderator[name=?]", "user[moderator]"
#     end
#   end
# end
