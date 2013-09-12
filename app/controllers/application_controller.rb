class ApplicationController < ActionController::Base
  #protect_from_forgery
skip_before_filter :verify_authenticity_token, :only => :create

#before_filter :set_locale

#  def set_locale
#    I18n.locale = params[:locale] if params.include?('locale')
#  end

end
