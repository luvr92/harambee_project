class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :project ]

  def home
  end

  def project
  end
end
