class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new()
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      #this goes to the new view, not the function
      render('new')
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def book_params
    params.require(:book).permit(:title)
  end
end
