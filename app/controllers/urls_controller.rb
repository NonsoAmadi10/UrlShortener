class UrlsController < ApplicationController
  def show
    query_param = "#{ENV['ROOT_URL']}#{params[:id]}"
    @url = Url.where(short_url: query_param) rescue nil
    redirect_to @url.first.full_url  
  end
end
