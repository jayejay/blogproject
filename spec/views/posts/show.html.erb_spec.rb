# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'posts/show', type: :view do
  before(:each) do
    @post = create(:post)
  end

  xit 'renders attributes in <p>' do
    render
  end
end
