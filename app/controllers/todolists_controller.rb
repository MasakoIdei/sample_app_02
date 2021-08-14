class TodolistsController < ApplicationController

  def new
    @list = List.new
  end

 def create
   list = List.new(list_params)
   if list.save
     redirect_to '/'
   else
     render 'new'
   end
 end

 private
 def list_params
   params.require(:list).permit(:title, :body)
 end

end
