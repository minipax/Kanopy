class SessionsController < ApplicationController
  def create
    @citizen = Citizen.find_or_create_from_auth_hash(auth_hash)
    self.current_citizen = @citizen
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end