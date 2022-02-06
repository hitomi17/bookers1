class BooksController < ApplicationController
  def new
    @book = Book.new
    @books = Book.all
  end

  def create
    @books = Book.all
    @book = Book.new(book_params)
    if @book.save
      redirect_to index_path(@book.id)
    else
      render :new
    end
  end

  def index
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to show_path(list.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to new_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
