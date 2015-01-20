class StaticPagesController < ApplicationController

  def home
    @contact = Contact.new
    if signed_in?
    end
  end

  def mobile_projects
  end

  def more_sites
  end

  def more_saas_projects
  end
end
