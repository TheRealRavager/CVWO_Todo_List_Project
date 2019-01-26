class WelcomeController < ApplicationController
  def index
    @tasks = ["Eat", "Sleep", "Code", "Repeat"]
  end
end
