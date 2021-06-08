Deface::Override.new(:virtual_path => 'spree/addresses/_form',
                     :name => 'add_fields_to_address_form',
                     :insert_after => "p[data-erb-id='<%=\"\#{address_id}address2\" %>']",
                     :partial => 'spree/addresses/add_district')

Deface::Override.new(:virtual_path => 'spree/addresses/_form',
                     :name => 'add_fields_to_address_form',
                     :insert_before => "p[data-erb-id='<%=\"\#{address_id}address2\" %>']",
                     :partial => 'spree/addresses/add_number')

Deface::Override.new(:virtual_path => 'spree/addresses/_form',
                     :name => 'add_fields_to_address_form',
                     :replace => 'p[data-erb-id="<%=\"\#{address_id}country" %>"]',
                     :partial => 'spree/addresses/hide_country')

Deface::Override.new(:virtual_path => 'spree/addresses/_form',
                     :name => 'add_fields_to_address_form',
                     :replace => 'p[data-erb-id="city"]',
                     :partial => 'spree/addresses/replace_city_input_text_by_select')

Deface::Override.new(:virtual_path => 'spree/addresses/_form',
                     :name => 'add_fields_to_address_form',
                     :replace => 'erb:contains("state_elements = [")',
                     :partial => 'spree/addresses/set_data_uf_to_state')