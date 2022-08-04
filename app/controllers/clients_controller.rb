class ClientsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :not_found
    def index 
        clients = Client.all 
        render json: clients, status: :ok
    end

    def show
        client = Client.find(params[:id])
        render json: client, status: :ok
    end

    private

    def not_found
        render json: { error: "Client not found" }, status: 404
    end
end
