class IndicateursController < ApplicationController
    def index
        @indicateurs = indicateur.all

        render json: @indicateurs
    end

    def show
        @indicateur = indicateur.find(params[:id])

        render json: @indicateur
    end

    def create
        @indicateur = indicateur.create(name: params[:name], description: params[:description], donnees: params[;donnees] collecteparente: params[:collecteparente])

        render json: @indicateur
    end

    def update
        @indicateur = indicateur.find(params[:id])
        @indicateur.update(name: params[:name], description: params[:description], donnees: params[;donnees] collecteparente: params[:collecteparente])

        render json: "#{@indicateur.name} has been updated!"
    end

    def destroy 
        @indicateur = indicateur.find(params[:id])
        @indicateur.destroy

        render json: "#{@indicateur.name} has been deleted!"
    end
end
