class AlcholsController < ApplicationController
  
  def new
   @alchol = Alchol.new
  end
  
  def show
    @alchol = Alchol.find(params[:id])
  end
  
  def index
    @alchols = Alchol.all
  end
  
  def create
    @alchol = Alchol.new(alchol_params)
    if @alchol.save
      flash[:success] = '新規作成に成功しました。'
      redirect_to alchols_url
    else
      render :new
    end
  end
  
  private

    def alchol_params
      params.require(:alchol).permit(:name, :price)
    end
end
