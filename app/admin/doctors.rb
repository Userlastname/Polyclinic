ActiveAdmin.register Doctor do
  permit_params :phone, :first_name, :last_name, :category_id, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :phone
    column :category_id, ->(user) { Category.find_by(id: user.category_id)&.name }
    actions
  end

  filter :first_name
  filter :last_name
  filter :phone
  filter :category_id

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :phone
      f.input :category_id, as: :select, collection: Category.all.map { |c| [c.name, c.id] }
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
