# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'comments/show', type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
                                  post_id: 2,
                                  author_name: 'Author Name',
                                  author_email: 'Author Email',
                                  content: 'MyText',
                                  author_ip: 'Author Ip',
                                  approved: false,
                                  parent_id: 3,
                                  user_id: 4
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Author Name/)
    expect(rendered).to match(/Author Email/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Author Ip/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
