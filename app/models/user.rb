# frozen_string_literal: true

# User
class User < ApplicationRecord
  has_many :posts, dependent: :destroy
end
