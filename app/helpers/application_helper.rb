module ApplicationHelper

  def embed(yt_id)
    youtube_id = yt_id
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}", width: '600' , height: '400', autohide: '1', modestbranding: '1')
  end
end
