class WatchController < ApplicationController
  
  def index
    video = Watch.new
    videos = Watch.all
    video_info = video.get_youtube_objects(videos)
    @displayed = video.pretty_video_elements(videos, video_info)
    if params[:filter]
     category = Category.by_type(params[:filter])
     video_info = video.get_youtube_objects(category)
    @displayed = video.pretty_video_elements(category, video_info)
    end 
    
  end
 


end
