class BooksController < ApplicationController
    
    def index
        @book = Book.new
        @books = Book.all
    end
    
    def create
        @book = Book.new(book_params)
        @book.user_id = currenet_user.id
        @book.save
        redirect_to books_path
    end
        
    def show
    end
    
    
    private
    
    def book_params
        params.reqiore(:book).permit(:title, :body)
    end
    
end
