class AuthorsController < ApplicationController
  
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def show
    @author = Author.find_by_id(params[:id])
  end

  def edit
    @author = Author.find_by_id(params[:id])
  end

  def create
    @author = Author.new author_params
    if @author.save
      redirect_to authors_path, notice: "Author added!"
    else
      render :new
    end
  end

  def update
    @author = Author.find_by_id(params[:id])
    @author.update_attributes author_params
    if @author.save
      redirect_to author_path, notice: "Author updated!"
    else
      render :edit
    end
  end

  def destroy
    author = Author.find_by_id(params[:id])
    author.destroy
    redirect_to authors_path, notice: "You have successfully deleted this author."
  end

  private
  def author_params
    params.require(:author).permit(:first_name, :last_name, :age)
  end

end
