# frozen_string_literal: true

module JsonApi
  # Serializer
  class UserSerializer
    include FastJsonapi::ObjectSerializer
    set_key_transform :camel_lower

    attributes :id, :name, :email

    has_many :posts, serializer: JsonApi::PostSerializer
  end
end
