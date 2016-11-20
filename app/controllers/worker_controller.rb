class WorkerController < ApplicationController
  def index
    @workers=Worker.all
  end
end
