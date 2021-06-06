Deface::Override.new(:virtual_path => 'spree/admin/users/_form',
                     :name => 'add_fields_to_users_form',
                     :insert_top => '[data-hook="admin_user_form_fields"]',
                     :partial => 'spree/admin/add_extras_fields')