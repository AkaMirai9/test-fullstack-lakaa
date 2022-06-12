class CollectesController < ApplicationController
    def index
        @collectes = Collecte.all

        render json: @collectes
    end

    def show
        @collecte = Collecte.find(params[:id])

        render json: @collecte
    end

    def create
        @collecte = Collecte.create(date: params[:date], assos: params[:assos])

        render json: @collecte
    end

    def update
        @collecte = Collecte.find(params[:id])
        @collecte.update(date: params[:date], assos: params[:assos])

        render json: "The collecte with #{@collecte.assos} on #{@collecte.date} has been updated!"
    end

    def destroy
        @collecte = Collecte.find(params[:id])
        @collecte.destroy

        render json: "The collecte with #{@collecte.assos} on #{@collecte.date} has been deleted!"
    end
end
