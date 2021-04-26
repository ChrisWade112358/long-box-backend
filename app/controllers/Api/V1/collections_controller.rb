class Api::V1::CollectionsController < ApplicationController
    def update
        binding.pry
        collection = Collection.find_by(user_id: params[:userId])
        comic = Comic.find_by(comicId: params[:comic][:comicId])

        if comic
            collection.comics = comic.id 
        else
            comic =  Comic.create!(params[:comic])
            collection.comics = comic.id 
        end

        if collection
            render json: {
                collection: collection
            }
        else
            render json: { status: 500 }
        end
    end
end
