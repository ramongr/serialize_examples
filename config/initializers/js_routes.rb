# frozen_string_literal: true

JsRoutes.setup do |config|
  config.camel_case = true
  config.file = Rails.root.join('app', 'javascript', 'routes.js')
end
JsRoutes.generate!
