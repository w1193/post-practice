class PostController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  
  def index
    @boards = Board.all
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

end
