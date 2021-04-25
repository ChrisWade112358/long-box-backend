class ComicsController < ApplicationController

    def def index
        comics = Comic.all
    end

    def addComic
        Comic.create!(
            user: params[:comic][:userId]
            title: params[:comic][:title],
            issueNumber: params[:comic][:issueNumber],
            imageURL: params[:comic][:imageURL],
            description: params[:comic][:description],
            comicId: params[:comic][:comicId],
            format: params[:comic][:format],
            pageCount: params[:comic][:pageCount]

        )
    end
end
