class Manage::ContentController < ApplicationController
before_action :authenticate_user!

def index
video = Watch.new
videos = Watch.all
@videos = video.get_youtube_objects(videos)
end

end
