class HomeController < ApplicationController
  def index
    @notes = Note.all
  end
end
