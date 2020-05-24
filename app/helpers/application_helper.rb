module ApplicationHelper
  # application_helper.rb
  def back_link(params, name: "Back", class: "back-button header-title")
    if params[:back_path].present?
      link_to name, params[:back_path], class: 'back-button header-title'
    else
      link_to name, :back, class: "back-button header-title"
    end
  end
end
