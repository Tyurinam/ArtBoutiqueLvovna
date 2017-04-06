<?php
class ControllerExtensionModuleMenu extends Controller {
  
	public function index($setting) {
		$this->load->language('extension/module/menu');
        
        $data['text_menumodule_1'] = $this->language->get('text_menumodule_1');
        $data['text_menumodule_2'] = $this->language->get('text_menumodule_2');
        $data['text_menumodule_3'] = $this->language->get('text_menumodule_3');
        $data['text_menumodule_4'] = $this->language->get('text_menumodule_4');
        $data['text_menumodule_5'] = $this->language->get('text_menumodule_5');
        $data['text_menumodule_6'] = $this->language->get('text_menumodule_6');
        //exposition boutique artistes nouvelles videos contactes
        $data['menumodule_1'] = $this->url->link('common/exposition');
        $data['menumodule_2'] = $this->url->link('common/boutique');
        $data['menumodule_3'] = $this->url->link('common/artistes'); 
        $data['menumodule_4'] = $this->url->link('common/nouvelles');
        $data['menumodule_5'] = $this->url->link('common/videos');
        $data['menumodule_6'] = $this->url->link('common/contactes');
        
         //var_dump($data);
        return $this->load->view('extension/module/menu', $data);

		/*$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['products'] = array();

		$filter_data = array(
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit']
		);
       

		$results = $this->model_catalog_product->getProducts($filter_data);

		if ($results) {
			foreach ($results as $result) {
                
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}
                
                if ($this->config->get('manufacturer_id')) {
                $manufacturer_id=$result['manufacturer_id'];
                }
                 if ($this->config->get('manufacturer')) {
                $manufacturer=$result['manufacturer'];
                }
                
				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
                    'manufacturer'      => $result['manufacturer']
            //'manufacturer_id'      => $result['manufacturer_id']
                    
				);
			}
            //var_dump($data);
			return $this->load->view('extension/module/menu', $data);
        
		}*/
	}
}
