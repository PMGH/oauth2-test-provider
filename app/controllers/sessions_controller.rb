class SessionsController < Devise::SessionsController
  # protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  # override Devise Registrations controller to respond to json (for API)
  respond_to :json
  skip_before_action :verify_signed_out_user, only: [:destroy]

  def destroy
    super
    puts "destroying session"
    clear_access_token
  end

  private

  def clear_access_token
    cookies.delete :access_token
  end
end
