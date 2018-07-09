class RegistrationsController < Devise::RegistrationsController
  # protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  # override Devise Registrations controller to respond to json (for API)
  respond_to :json

  # stop static pages from loading
  # clear_respond_to
end
