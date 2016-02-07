class WatchController < ApplicationController
require "will_paginate/array"

  def index
    video = Watch.new
    videos = Watch.all
    video_info = video.get_youtube_objects(videos)
    @displayed = video.pretty_video_elements(videos, video_info)
    @displayed = @displayed.paginate(:page => params[:page], :per_page => 5)
    if params[:filter]
     category = Category.by_type(params[:filter])
     video_info = video.get_youtube_objects(category)
     @displayed = video.pretty_video_elements(category, video_info)
    end 
  end

  def show
    @video = Watch.find(params[:id])
    @displayed = Watch.single_video_element(@video)
  end 
 


end
