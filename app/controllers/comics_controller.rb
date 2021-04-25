class ComicsController < ApplicationController

    def def index
        comics = Comic.all
    end

    def addComic
        Comic.create!(
            
            title: params[:comic][:title],
            issueNumber: params[:comic][:issueNumber],
            imageURL: params[:comic][:imageURL],
            description: params[:comic][:description],
            comicId: params[:comic][:comicId],
            format: params[:comic][:format],
            pageCount: params[:comic][:pageCount]

        )
        if comic
            render json: {
                user: comic
            }, status: :created
        else
            render json: { status: 500 }
        end
    end
end
