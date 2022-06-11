class Api::V1::UsersController < ApplicationController
  # Custom routes for new user, login, and sign up

  # POST /api/v1/users/
  def create
    # handle JSON from request to create a new user
  end

  # GET /api/v1/users/:id
  def edit
    # retrieve user information to populate a user edit page
  end

  # GET /api/v1/users/login
  def login
    # sign in and authenticate
  end
end
