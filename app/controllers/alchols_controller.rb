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
  
  def edit 
    @alchol = Alchol.find(params[:id])
  end
  
  def update
    @alchol = Alchol.find(params[:id])
    if @alchol.update_attributes(alchol_params)
      flash[:success] = "更新しました。"
      redirect_to alchols_url
    else
      render :edit
      
    end
  end
  
  def destroy
    @alchol = Alchol.find(params[:id])
    @alchol.destroy
    flash[:success] = "#{@alchol.name}を削除しました。"
    redirect_to alchols_url
  end
  
  private

    def alchol_params
      params.require(:alchol).permit(:name, :price, :kind, :image, :character)
    end
end
