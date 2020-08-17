# frozen_string_literal: true

module Ams
  # UserSerializer
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :email
    has_many :posts, serializer: Ams::PostSerializer
  end
end
