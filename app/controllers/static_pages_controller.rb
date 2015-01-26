class StaticPagesController < ApplicationController

  def home
    @contact = Contact.new
    if signed_in?
    end
  end

  def mobile_projects
    respond_to do |format|
        format.html
        format.json
        format.js
      end
  end

  def more_websites
    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end

  def more_saas_projects
    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end
end
