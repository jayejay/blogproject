# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    association :post
    author_name { 'MyString' }
    author_email { 'MyString' }
    content { 'MyText' }
    author_ip { 'MyString' }
    created_at { '2017-03-08 20:29:19' }
    approved { false }
    parent_id { 1 }
    association :user
  end
end
