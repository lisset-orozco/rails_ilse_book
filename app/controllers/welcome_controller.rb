# frozen_string_literal: true

# welcome controller
class WelcomeController < ApplicationController
  def index
    redirect_to courses_path if admin_signed_in? || user_signed_in?
  end
end
