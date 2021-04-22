class AbcsController < ApplicationController
  before_action :load_not_accepted_or_rejected

  def load_not_accepted_or_rejected
    @abcs = Abc.pending
  end


  def index

  end


  def update

    @abc = Abc.find(params[:id])
    if abc_params[:_action] == "accept"
      @abc.accept!
      flash[:alert] = "#{@abc.name} accepted."
    elsif abc_params[:_action] == "reject"
      @abc.reject!
      flash[:alert] = "#{@abc.name} rejected."
    end

    load_not_accepted_or_rejected

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to get_emails_imports_path }
    end
  end


  def abc_params
    params.require(:abc).permit( :_action)
  end
end
