class AttributsController < ApplicationController
    def index
        @attributs = Attribut.all

        render json: @attributs
    end

    def show
        @attribut = Attribut.where("collecteid = :id", {:id => params[:id]}).all

        render json: @attribut
    end

    def create
        @attribut = Attribut.create(name: params[:name], desc: params[:desc], datas: params[:datas], collecteid: params[:collecteid])

        render json: @attribut
    end

    def update
        @attribut = Attribut.find(params[:id])
        @attribut.update(name: params[:name], desc: params[:desc], datas: params[:datas], collecteid: params[:collecteid])

        render json: " has been updated!"
    end

    def destroy
        @attribut = Attribut.find(params[:id])
        @attribut.destroy

        render json: " has been deleted!"
    end
end
