ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :price, :desc, :image, :short_desc, :link, :delivery, :sub_title
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :price, :desc, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
  f.inputs do
    f.input :title
    f.input :price
    f.input :desc
    f.input :image, as: :file
    f.input :short_desc
    f.input :link
    f.input :delivery
    f.input :sub_title
  end
  f.actions
end

end
