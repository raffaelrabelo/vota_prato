class HelloWorldController < ApplicationController
  def hello
    render :text =>"Hello World"
  end
  
  def index
    hello
  end
end
