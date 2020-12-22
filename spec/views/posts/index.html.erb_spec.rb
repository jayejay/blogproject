# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'posts/index', type: :view do
  before(:each) do
    assign(:posts, [
             create(:post),
             create(:post)
           ])
  end

  it 'renders a list of posts' do
    render
  end
end
