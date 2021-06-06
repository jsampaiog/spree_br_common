Deface::Override.new(:virtual_path => 'spree/address/_form',
                     :name => 'add_fields_to_address_form',
                     :insert_after => '[data-erb-id*="address2"]',
                     :partial => 'spree/address/add_district')

Deface::Override.new(:virtual_path => 'spree/address/_form',
                     :name => 'add_fields_to_address_form',
                     :insert_before => '[data-erb-id*="address2"]',
                     :partial => 'spree/address/add_number')

Deface::Override.new(:virtual_path => 'spree/address/_form',
                     :name => 'add_fields_to_address_form',
                     :replace => 'p[data-erb-id*="country"]',
                     :partial => 'spree/address/hide_country')

Deface::Override.new(:virtual_path => 'spree/address/_form',
                     :name => 'add_fields_to_address_form',
                     :replace => 'p[data-erb-id*="city"]',
                     :partial => 'spree/address/replace_city_input_text_by_select')

Deface::Override.new(:virtual_path => 'spree/address/_form',
                     :name => 'add_fields_to_address_form',
                     :replace => 'erb:contains("state_elements = [")',
                     :partial => 'spree/address/set_data_uf_to_state')