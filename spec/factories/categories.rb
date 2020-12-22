# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    name { 'Sports' }
    background_color { 'white' }
    title_color { 'black' }
  end
end
