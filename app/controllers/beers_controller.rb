class BeersController < ApplicationController
  def show
    @beer = Unirest.get("http://localhost:3000/api/v1/beers/#{params[:id]}").body
    render "show.html.erb"
  end
end
