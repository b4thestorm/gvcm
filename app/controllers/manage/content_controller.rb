class Manage::ContentController < ApplicationController
before_action :authenticate_user!

def index
@video = Watch.new
videos = Watch.all
video_info = @video.get_youtube_objects(videos)
@displayed = @video.pretty_video_elements(videos, video_info).paginate(:page => params[:page], :per_page => 10)
end




end
