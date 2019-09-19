class InstrumentsController < ApplicationController

    get "/instruments" do
        @instruments = Instrument.all
        erb :'instruments/index'
    end


    get "/instruments/new" do
      @instrument = Instrument.new
      erb :'instruments/new'
    end

    post "/instruments" do
      @instrument = Instrument.create(params[:instrument])
      redirect to "/instruments"
    end

    get "/instruments/:id" do
      @instrument = Instrument.find(params[:id])
        erb :'instruments/show'
    end

end
