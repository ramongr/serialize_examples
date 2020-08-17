# frozen_string_literal

# JSON API Controller
class JsonApiUserController < ApplicationController
  def index
    users = JsonApi::UserSerializer.new(User.all, { include: [:posts] })
    render component: 'json_api/JsonApiUserListComponent', props: { users: users }
  end

  def show
    user = JsonApi::UserSerializer.new(User.find(params[:id]), { include: [:posts] })
    render component: 'json_api/JsonApiUserComponent', props: { user: user }
  end
end
