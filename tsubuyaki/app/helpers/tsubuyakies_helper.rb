module TsubuyakiesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
      confirm_tsubuyakies_path
    elsif action_name == 'edit'
      tsubuyaky_path
    end
  end
end
