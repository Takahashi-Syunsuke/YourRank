module ApplicationHelper
# rankのフォームに関するエラーメッセージの設定
# ja.ymlでメッセージの編集が可能 
  def show_errors(model, clumn_name)
    if model.errors.messages[clumn_name].present?
      model.errors.messages[clumn_name]
    end
    return model.errors.messages[clumn_name]
  end
end
