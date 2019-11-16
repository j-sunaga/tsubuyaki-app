class TsubuyakiesController < ApplicationController
  before_action :set_tsubuyaki, only: [:show, :edit, :update,:destroy]


  # つぶやき一覧を表示するアクション
  def index
    @tsubuyakies = Toukou.all
  end

  def new
    @tsubuyaki = Toukou.new
  end

  def show
  end

  def create
    @tsubuyaki = Toukou.new(tsubuyaki_params)
      if @tsubuyaki.save
        redirect_to tsubuyakies_path, notice: "つぶやきました！"
      else
        render action: :new
      end
  end

  private

  def tsubuyaki_params
    params.require(:toukou).permit(:content)
  end

  def set_tsubuyaki
   @tsubuyaki = Toukou.find(params[:id])
  end

end
