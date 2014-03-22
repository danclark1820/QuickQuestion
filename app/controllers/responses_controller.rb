class ResponsesController < ApplicationController

  def index
    @responses = Response.all
  end

  def show
    @responses = Response.find(params[:id])
  end

  def new
    @response = Response.new
  end

  def create
    @response = Response.new(params[:response])
    if @response.save
    else
      render 'new'
    end
  end

end
