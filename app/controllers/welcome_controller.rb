class WelcomeController < ApplicationController
  def index
    if params.has_key?(:locale) &&  params[:locale].to_sym == :es
      @other_locale = :en
    else
      @other_locale = :es
    end
  end
end
