class TodolistsController < ApplicationController

  def new
    @list = List.new
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

 def create
   list = List.new(list_params)
   if list.save
     redirect_to todolist_path(list.id)
   else
     render 'new'
   end
 end

 private
 def list_params
   params.require(:list).permit(:title, :body)
 end

end
