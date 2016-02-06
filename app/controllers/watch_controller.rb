class WatchController < ApplicationController
  
  def index
    video = Watch.new
    videos = Watch.all
    video_info = video.get_youtube_objects(videos)
    @displayed = video.pretty_video_elements(videos, video_info)
  end
end
