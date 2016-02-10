class Manage::PromoteController < ApplicationController
before_action :authenticate_user!

def index
@list = Guest.all
end 


end
