<!-- Contact Section -->
<section id="contact">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6 basic">
				{{ contact_us.first().address_one }}
				{{ contact_us.first().address_two }}
				{{ contact_us.first().address_three }}
				<br>
				{{ contact_us.first().general_info_one }}
				{{ contact_us.first().phone_number_one}}
				<br>
				{{ contact_us.first().general_info_two }}
				{{ contact_us.first().phone_number_two }}
				<br>
				{{ contact_us.first().general_info_three }}
				<div class="row">
					{{ each footer_logos as fl sort by fl.sort_order }}
					{{ if {index} % 2 == 1 && {index} != 1 }}
					</div>
					<div class="row">
					{{ end-if }}
					<div class="col-lg-6">
						<img  class="footer-logo" src="{{ fl.footer_logo.getImage() }}" alt="{{ fl.logo_alt_text }}">
					</div>
						{{ end-each }}
				</div>
				</div>
			<div class="col-lg-3 col-md-6 basic">
				<h4 class="basic">{{ contact_us.first().hours_title }}</h4>
				{{contact_us.first().special_hours_info}}
				{{ each hours_of_operation as hours sort by hours.sort_order}}
				<p>{{ hours.day_of_week}} {{ if {hours.open} }}<span class="pull-right">{{hours.open}}am - {{ hours.close}}pm</span>{{ else }}<span class="pull-right">Closed</span>{{ end-if }}</p>
				{{ end-each }}
			</div>
			<div class="col-lg-6 col-md-12 text-center">
				{{ contact_us.first().google_map_embed }}
			</div>
		</div>
	</div>
</section>

<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-6">

				<span class="copyright">&copy; {{site.date(Y)}} {{clippings.footer_text}}</span>
			</div>
			<div class="col-lg-4 col-md-6">
				<ul class="list-inline social-buttons">
					{{each social_links as social}}
					<li class="social-{{social.font_awesome_icon}}">
						<a href="{{social.url}}"><i class="fa fa-{{social.font_awesome_icon}}"></i></a>
					</li>
					{{end-each}}
				</ul>
			</div>
			<div class="col-lg-4 col-md-12">
				<ul class="list-inline quicklinks">
					{{ each footer_links as link sort by link.sort_order }}
					<li><a href="{{link.link}}">{{ link.link_title }}</a></li>
					{{ end-each }}
				</ul>
			</div>
		</div>
	</div>
</footer>
