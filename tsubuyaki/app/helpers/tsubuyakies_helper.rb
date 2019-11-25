module TsubuyakiesHelper
  def choose_new_or_edit
    if action_name == 'confirm' || action_name == 'create' || action_name == 'index'
      confirm_tsubuyakies_path
    elsif action_name == 'edit'
      tsubuyaky_path
    end
  end
end
