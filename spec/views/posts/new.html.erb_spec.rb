# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'posts/new', type: :view do
  before(:each) do
    assign(:post, Post.new)
    sign_in create(:user)
  end

  it 'renders new post form' do
    render

    assert_select 'form[action=?][method=?]', posts_path, 'post' do
    end
  end
end
