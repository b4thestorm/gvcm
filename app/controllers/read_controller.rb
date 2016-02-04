class ReadController < ApplicationController
  def new 
    @poem = Read.new
  end 

  def create 
    @poem = Read.new(poem_params)
    binding.pry
    @poem.title = params[:title]
    @poem.author = params[:author]
    @poem.body = params[:body].html_safe
    if @poem.save 
     flash[:notice] = "Poem has been added" 
     redirect_to root_path
    else
      render :new
    end 
  end

  private 
  def poem_params
    params.require(:poem).permit(:title, :author, :body)
  end
end
