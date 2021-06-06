Deface::Override.new(:virtual_path => 'spree/users/show',
                     :name => 'add_details_to_users',
                     :insert_top => '#user-info',
                     :partial => 'spree/users/add_details')