class GenresController < ApplicationController
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(params.require(:genre).permit(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end

    def show
        @genre = Genre.find_by(id: params[:id])
    end

    def edit
        @genre = Genre.find_by(id: params[:id])
    end

    def update
        @genre = Genre.find_by(id: params[:id])
        @genre.update(name: params[:genre][:name])
        @genre.save
        redirect_to genre_path(@genre)
    end 
end
