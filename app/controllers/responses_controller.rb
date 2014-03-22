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
    attributes = params[:response]
    @response = Response.new(q_one: attributes[:q_one], q_two: attributes[:q_two], q_three: attributes[:q_three])
    if @response.save
      redirect_to responses_path
    else
      puts "failed to create Response object"
    end
  end


end
