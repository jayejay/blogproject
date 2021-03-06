# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tags/show', type: :view do
  before(:each) do
    @tag = create(:tag)
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
