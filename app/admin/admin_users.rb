ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation
  actions :all, except: [:show]
  index do
    selectable_column
    id_column
    column :email
    column :created_at
    
   actions
  end

  filter :id
  filter :email
  
  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
