Deface::Override.new(:virtual_path => 'spree/shared/_user_form',
                     :name => 'add_fields_to_user_form',
                     :insert_before => '[data-hook="signup_after_email_fields"]',
                     :partial => 'spree/shared/add_extra_fields')