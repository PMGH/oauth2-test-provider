class SessionsController < Devise::SessionsController
  # protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  # override Devise Registrations controller to respond to json (for API)
  respond_to :json
end
