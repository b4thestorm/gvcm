class HomeController < ApplicationController

  def index
  video = Watch.new
  @guest = Guest.new
  videos = Watch.limit(4)
  video_info = video.get_youtube_objects(videos)
  @displayed = video.pretty_video_elements(videos, video_info)
  @poems = Read.limit(3)
  end

end
