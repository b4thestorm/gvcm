class Watch < ActiveRecord::Base
  #this will be the one to interact with youtube and aws to bring the videos to the site
 belongs_to :category

 def get_youtube_objects(list)
  container = []
  list.each {|video| container.push(Yt::Video.new id: video.video_id )} 
  container
 end

 #make an array of arrays
 def pretty_video_elements(list1,list2)
  list1.zip(list2)
 end
  
end
