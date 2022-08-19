class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def new
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to "/books/#{@book.id}"
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end

  def destroy
  end
  
  private 
    def book_params
      params.require(:book).permit(:title, :body)
    end
end
