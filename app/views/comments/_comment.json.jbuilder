# frozen_string_literal: true

json.extract! comment, :id, :post_id, :author_name, :author_email, :content, :author_ip, :created_at, :approved,
              :parent_id, :user_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
