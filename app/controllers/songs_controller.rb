class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])

    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(get_params)
        redirect_to song_path(@song)
    end

    def update
        @song = Song.create(get_params)
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end



    private

    def get_params
        strong_params = params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
