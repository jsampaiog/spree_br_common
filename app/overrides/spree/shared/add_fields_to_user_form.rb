Deface::Override.new(:virtual_path => 'spree/shared/_user_form',
                     :name => 'add_fields_to_user_form',
                     :insert_top => '#password-credentials',
                     :partial => 'spree/shared/add_extras_fields')