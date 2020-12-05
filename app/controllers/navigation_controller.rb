class NavigationController < ApplicationController
  
  def goto
    if surl = Shorturl.find_by(shorturl: params[:shorturl])
      surl.visited!
      redirect_to surl.targeturl
    else
      render partial: 'not_recognised'
    end
  end  
  
end