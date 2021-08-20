class TodolistsController < ApplicationController

  #新規
  def new
    @list = List.new
  end

 #投稿内容一覧
  def index
    @lists = List.all
  end

  #詳細表示
  def show
    @list = List.find(params[:id])
  end

#新規投稿保存
 def create
   @list = List.new(list_params)
   if @list.save
     redirect_to todolist_path(list.id)
   else
     render 'new'
   end
 end

#編集画面
 def edit
   @list = List.find(params[:id])
 end

#投稿内容の更新
 def update
  list = List.find(params[:id])
  list.update(list_params)
  redirect_to todolist_path(list.id)
 end

 private
 def list_params
   params.require(:list).permit(:title, :body, :image)
 end

end
