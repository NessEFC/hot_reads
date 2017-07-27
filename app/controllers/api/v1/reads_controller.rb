class Api::V1::ReadsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    @read = Read.find_or_initialize_by(link_url: read_params[:link_url])
    if @read.save
      @read.update_count
      render json: @read, status: 201
    else
      render json: @read.errors.full_messages, status: 500
    end
  end

  private

    def read_params
      params.require(:read).permit(:link_url)
    end

end
