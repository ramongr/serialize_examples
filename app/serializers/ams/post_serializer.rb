# frozen_string_literal: true

module Ams
  # Post Serializer
  class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :text
  end
end
