class PostController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  
  def index
    @boards = Board.all.reverse
    @id = params[:id]
  end
  
  def new
  end
  
  def create
    @title = params[:title]
    @contents = params[:contents]
    
    @board = Board.new
    @board.title = @title
    @board.contents = @contents
    @board.save
  end
  
  def show
    @board = Board.find(params[:id])
    @title = @board.title
    @contents = @board.contents
  end
  
  def destroy
    @board = Board.destroy(params[:id])
    redirect_to '/'
  end
  
end
