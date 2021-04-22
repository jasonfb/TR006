class AbcsController < ApplicationController


  before_action :load_not_accepted_or_rejected


  def load_not_accepted_or_rejected
    @abcs = Abc.all
  end


  def index

  end


  def update

  end
end
