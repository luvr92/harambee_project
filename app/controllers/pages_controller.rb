class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :project, :edu, :culture, :agriculture, :social, :sport, :staff, :contacts, :donations ]

  def home
  end

  def project
  end

  def edu
  end

  def culture
  end

  def agriculture
  end

  def social
  end

  def sport
  end

  def staff
  end

  def contacts
  end

  def donations
  end
end
