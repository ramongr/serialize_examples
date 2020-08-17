# frozen_string_literal: true

# AMS Controller
class AmsUserController < ApplicationController
  def index
    users = ActiveModel::Serializer::CollectionSerializer.new(
      User.includes(:posts).all, serializer: Ams::UserSerializer, key_format: :lower_camel
    )
    render component: 'ams/AmsUserListComponent', props: { users: users }
  end

  def show
    user = Ams::UserSerializer.new(User.includes(:posts).find(params[:id]), key_format: :lower_camel)
    render component: 'ams/AmsUserComponent', props: { user: user }
  end
end
