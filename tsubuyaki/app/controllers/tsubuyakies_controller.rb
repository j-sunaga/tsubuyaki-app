class TsubuyakiesController < ApplicationController
  before_action :set_tsubuyaki, only: [:show, :edit, :update,:destroy]


  # つぶやき一覧を表示するアクション
  def index
    @tsubuyakies = Toukou.all.order(created_at: "DESC")
    @tsubuyaki = Toukou.new
  end

  def show
  end


  def create
    @tsubuyaki = Toukou.new(tsubuyaki_params)
      if params[:back]
        @tsubuyakies = Toukou.all.order(created_at: "DESC")
        render :index
      else
        if @tsubuyaki.save
          redirect_to tsubuyakies_path, notice: "つぶやきました！"
        else
          @tsubuyakies = Toukou.all.order(created_at: "DESC")
          render action: :index
        end
      end
  end

  def edit
  end

  #アップデートアクション
  def update
      if @tsubuyaki.update(tsubuyaki_params)
        redirect_to tsubuyakies_path, notice: "つぶやきを編集しました！"
      else
        render :edit
      end
    end

    #削除機能
    def destroy
      @tsubuyaki.destroy
       redirect_to tsubuyakies_path, notice:"つぶやきを削除しました！"
    end

    #登録前に確認する
    def confirm
      @tsubuyaki = Toukou.new(tsubuyaki_params)
      if @tsubuyaki.invalid? then
        @tsubuyakies = Toukou.all.order(created_at: "DESC")
        render :index
      end
    end

    def profile
    end

  private

  def tsubuyaki_params
    params.require(:toukou).permit(:content)
  end

  def set_tsubuyaki
   @tsubuyaki = Toukou.find(params[:id])
  end


end
