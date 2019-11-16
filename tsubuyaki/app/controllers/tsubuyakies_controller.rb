class TsubuyakiesController < ApplicationController

  # つぶやき一覧を表示するアクション
  def index
    @tsubuyakies = Toukou.all
  end

end
