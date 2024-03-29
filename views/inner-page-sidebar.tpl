<div class="sidebar" >
	{{ each client_testimonials as ct sort by rand() limit 1 }}
	<div class="testimonial" >
	<h4>What our Clients have to say.</h4>
		<hr/>
		<p><span>{{ ct.client_testimonial }}</span></p>
		<h5>{{ ct.client_first_name }} {{ ct.client_last_name.substr(0,1) }}. </h5>
		<h6>{{ ct.client_location }}</h6>
	</div>
	<hr/>
	{{ end-each }}
	
	<a class="btn btn-primary" href="https://dashboard.petdesk.com/WebApptRequest/?placeGUID={{ clippings.petdesk_ref_code }}" onClick= "ga('set', 'dimension3', 'THEME_DOG'); ga('set', 'page', '/ZESTY/CUSTOMER_WEBSITE_BUTTONCLICK/SIDEBAR'); ga('send', 'pageview'); ga('send', 'event', 'ZESTY', 'CUSTOMER_WEBSITE_BUTTONCLICK', â€™SIDEBARâ€™);" target="_blank">Request Appointment</a>
	{{ if {page.body_text.substr(4500,4501)} != '' }}
	{{ each promo as pro sort by pro.sort_order limit 1 }}
	<div class="promo" >
		<h4>{{ pro.promo_title }}</h4>
		<img src="{{ pro.promo_image.getImage(600) }}" alt="{{ pro.promo_title }} image" />
		<p>{{ pro.promo_description }}</p>
		<p><a href="{{ promotions.first().getUrl() }}">View More Â»</a></p>
	</div>
	{{ end-each }}
	{{ end-if }}
</div>
