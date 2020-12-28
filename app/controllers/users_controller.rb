# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  PER = 5

  def index
    @users = User.order(:id).page(params[:page]).per(PER)
  end

  def show; end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
