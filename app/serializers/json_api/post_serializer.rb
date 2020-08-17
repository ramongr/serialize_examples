# frozen_string_literal: true

module JsonApi
  # Serializer
  class PostSerializer
    include FastJsonapi::ObjectSerializer
    set_key_transform :camel_lower

    attributes :id, :title, :text
  end
end
