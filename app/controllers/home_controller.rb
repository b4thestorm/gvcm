class HomeController < ApplicationController


  def index
  @videos = Watch.all
  @video = Yt::Video.new id:'nwhsmMVDc0I'
  @poems = Read.all

  end

end
