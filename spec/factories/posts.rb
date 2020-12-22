# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { 'test post' }
    content { 'test content' }
    published_at { Time.zone.now }
    association  :user
    association :category
  end
end
