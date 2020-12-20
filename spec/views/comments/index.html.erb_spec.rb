# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'comments/index', type: :view do
  before(:each) do
    assign(:comments, [
             Comment.create!(
               post_id: 2,
               author_name: 'Author Name',
               author_email: 'Author Email',
               content: 'MyText',
               author_ip: 'Author Ip',
               approved: false,
               parent_id: 3,
               user_id: 4
             ),
             Comment.create!(
               post_id: 2,
               author_name: 'Author Name',
               author_email: 'Author Email',
               content: 'MyText',
               author_ip: 'Author Ip',
               approved: false,
               parent_id: 3,
               user_id: 4
             )
           ])
  end

  it 'renders a list of comments' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'Author Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Author Email'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'Author Ip'.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: 4.to_s, count: 2
  end
end
