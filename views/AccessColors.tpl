<!-- ACCESSIBILITY OVERRIDE FOR FONT COLORS  -->
<!---------------------------------------------->
<style>

	/* ------------------------------------ */
	/*   1. SITE WIDE FONT COLOR: GENERAL   */
	/* ------------------------------------ */
	/* SITE WIDE FONT COLOR: GENERAL */
		* { color: {{ if {accessibility_colors.first().site_wide} }}{{ accessibility_colors.first().site_wide}};{{ end-if }} }

	/* HTML HEADER COLORS */
	/* ----------------------------------------------------------------- */
	/*     2. All SUBPAGE HEADERS: About Us, Careers, Services, etc.     */
	/* ----------------------------------------------------------------- */
	/* HTML HEADER COLORS */
		/* All subpage headers: About Us, Careers, Services, etc. */
		h1 { color: {{if {accessibility_colors.first().subpage_headers_h1} }}{{accessibility_colors.first().subpage_headers_h1}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }


	/* ----------------------------------------------------------------- */
	/*     3. All SUBPAGE Hero Images   */
	/* ----------------------------------------------------------------- */
		.hero-container h2 { color: {{if {accessibility_colors.first().subpage_hero_text} }}{{accessibility_colors.first().subpage_hero_text}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }


	/* ---------------------------------------------------------------- */
	/*    4. Homepage squares titles      */
	/* ---------------------------------------------------------------- */
		#team h3{ color: {{if {accessibility_colors.first().h3_headers_squares_title} }}{{accessibility_colors.first().h3_headers_squares_title}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }

	/* ---------------------------------------------------------------- */
	/*    5. Homepage squares button    */
	/* ---------------------------------------------------------------- */
		#team a { color: {{if {accessibility_colors.first().homepage_squares_buttons} }}{{accessibility_colors.first().homepage_squares_buttons}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }

	/* ---------------------------------------------------------------- */
	/*    6. Homepage squares button hover    */
	/* ---------------------------------------------------------------- */
		/* Squares buttons hover */
		#team a:hover { color: {{if {accessibility_colors.first().homepage_squares_buttons_hover} }}{{accessibility_colors.first().homepage_squares_buttons_hover}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }

	/* ---------------------------------------------------------------- */
	/*    7. Employee categories    */
	/* ---------------------------------------------------------------- */
		#meet-the-team h3 { color: {{if {accessibility_colors.first().h3_headers_employee_cats} }}{{accessibility_colors.first().h3_headers_employee_cats}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} } /* check and see if h3 affects same text as in Cat */

	/* -------------------------------- */
	/*            8. LINKS             */
	/* -------------------------------- */
		a { color: {{if {accessibility_colors.first().links} }}{{accessibility_colors.first().links}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* Footer links */
		footer a { color: {{if {accessibility_colors.first().links} }}{{accessibility_colors.first().links}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }

	/* -------------------------------- */
	/*          9. LINK HOVER         */
	/* -------------------------------- */
		a:hover { color: {{if {accessibility_colors.first().link_hover_color} }}{{accessibility_colors.first().link_hover_color}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* Footer links hover */
		footer a:hover { color: {{if {accessibility_colors.first().link_hover_color} }}{{accessibility_colors.first().link_hover_color}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }

	/* -------------------------------- */
	/*         10. ALL ICON colors       */
	/* -------------------------------- */
	/* Social Icon colors */
		/* Note: fa & fa:hover colors impact the Patient Forms PDF doc icon as well. You can override the colors for the PDF doc icon under the Patient Forms section below */
		.fa { color: {{if {accessibility_colors.first().all_icons} }}{{accessibility_colors.first().all_icons}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* Patient Forms PDF Icon */
		.form-rows .fa.fa-file-pdf-o { color: {{if {accessibility_colors.first().all_icons} }}{{accessibility_colors.first().all_icons}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		.promo-detail:after { color: {{if {accessibility_colors.first().all_icons} }}{{accessibility_colors.first().all_icons}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }

		/* class for social icons? ul.social-buttons li a */

	/* -------------------------------- */
	/*   11. Social Icon Hover colors    */
	/* -------------------------------- */
		.fa:hover { color: {{if {accessibility_colors.first().social_icon_hover} }}{{accessibility_colors.first().social_icon_hover}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* Social icon bubble background color - do not need - used accent color */
		/* footer ul.social-buttons li a { background-color: } */

	/* -------------------------------- */
	/*       12. PHONE NUMBER LINK       */
	/* -------------------------------- */
		/* Header: phone number link  - Dog does not have a telephone icon */
		#mainNav .number h3 a  { color: {{if {accessibility_colors.first().phone_number} }}{{accessibility_colors.first().phone_number}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		#mainNav .number h6 { color: {{if {accessibility_colors.first().phone_number} }}{{accessibility_colors.first().phone_number}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }

	/* ---------------------------------------------------------------- */
	/*     13. ALL BUTTONS including slider button and timeline button and excluding squares     */
	/* ---------------------------------------------------------------- */
	/* Header: request appt button */
		#mainNav #request { color: {{if {accessibility_colors.first().all_buttons} }}{{accessibility_colors.first().all_buttons}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* About us: button */
		.portfolio a { color: {{if {accessibility_colors.first().all_buttons} }}{{accessibility_colors.first().all_buttons}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* testimonial sidebar Request appt button */
		.sidebar .btn.btn-primary { color: {{if {accessibility_colors.first().all_buttons} }}{{accessibility_colors.first().all_buttons}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* Form submit button */
		#patient-forms .btn-primary { color: {{if {accessibility_colors.first().all_buttons} }}{{accessibility_colors.first().all_buttons}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* slider button */
		.intro-text a { color: {{if {accessibility_colors.first().all_buttons} }}{{accessibility_colors.first().all_buttons}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }


	/* -------------------------------- */
	/*        14. BUTTON HOVER           */
	/* -------------------------------- */
		#mainNav #request:hover { color: {{if {accessibility_colors.first().all_buttons_hover} }}{{accessibility_colors.first().all_buttons_hover}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* About us: button hover */
		.portfolio a:hover { color: {{if {accessibility_colors.first().all_buttons_hover} }}{{accessibility_colors.first().all_buttons_hover}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* testimonial sidebar Request appt button hover */
		.sidebar .btn.btn-primary:hover { color: {{if {accessibility_colors.first().all_buttons_hover} }}{{accessibility_colors.first().all_buttons_hover}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* Form submit button hover */
		#patient-forms .btn-primary:hover { color: {{if {accessibility_colors.first().all_buttons_hover} }}{{accessibility_colors.first().all_buttons_hover}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* slider button hover */
		.intro-text a:hover { color: {{if {accessibility_colors.first().all_buttons_hover} }}{{accessibility_colors.first().all_buttons_hover}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }



	/* NAV BAR */
	/* -------------------------------- */
	/*          15. SITE NAME           */
	/* -------------------------------- */
	/*  Nav Bar: site name */
		.navbar-custom .navbar-brand.site-name { color: {{if {accessibility_colors.first().site_name} }}{{accessibility_colors.first().site_name}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }



	/* -------------------------------- */
	/*      16. SITE NAME HOVER         */
	/* -------------------------------- */
		.navbar-custom .navbar-brand.site-name:hover { color: {{if {accessibility_colors.first().site_name_hover} }}{{accessibility_colors.first().site_name_hover}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }


	/* -------------------------------- */
	/*          17. ALL NAV ITEMS       */
	/* -------------------------------- */
	/* Nav Bar: all nav items */
		.navbar-custom .nav li a span { color: {{if {accessibility_colors.first().all_nav_items} }}{{accessibility_colors.first().all_nav_items}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		.caret { color: {{if {accessibility_colors.first().all_nav_items} }}{{accessibility_colors.first().all_nav_items}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }


	/* ------------------------------------------------- */
	/*  18. ALL NAV ITEMS HOVER   */

	/*   ALL NAV ITEMS HOVER STATE BACKGROUND COLOR   */
	/* ------------------------------------------------- */
	/* background color of hover on dropdown items */
		.dropdown-menu>li>a:hover { background-color: {{if {accessibility_colors.first().all_nav_items_hover} }}{{accessibility_colors.first().all_nav_items_hover}};{{end-if}} }


	/* navbar active items */
	/* -------------------------------- */
	/*    19. NAV ACTIVE ITEMS BG COLOR     */

	/*    NAV BG COLOR ACTIVE ITEMS     */
	/* -------------------------------- */
		.navbar-custom .navbar-nav>.active>a { background-color: {{if {accessibility_colors.first().nav_active_item_bg_color} }}{{accessibility_colors.first().nav_active_item_bg_color}};{{end-if}} }
		.navbar-custom .navbar-nav ul a.at { background-color: {{if {accessibility_colors.first().nav_active_item_bg_color} }}{{accessibility_colors.first().nav_active_item_bg_color}};{{end-if}} }
		.navbar-custom .navbar-nav>.active>a:hover { background-color: {{if {accessibility_colors.first().nav_active_item_bg_color} }}{{accessibility_colors.first().nav_active_item_bg_color}};{{end-if}} }


	/* HOMEPAGE */
	/* -------------------------------- */
	/*       20. SLIDER TEXT       */
	/* -------------------------------- */
	/* Homepage: slider */
		/* Slider text */
		.intro-text .intro-lead-in,.intro-heading { color: {{if {accessibility_colors.first().slider_text} }}{{accessibility_colors.first().slider_text}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }


	/* Homepage Timeline */
	/* -------------------------------- */
	/*       21. TIMELINE TITLE, BUBBLE TITLE, BUBBLE SUBTITLES       */
	/* -------------------------------- */
	/* Timeline */
	/* header, subtitle, body text */
	section h2.section-heading.color-override { color: {{if {accessibility_colors.first().all_timeline_titles} }}{{accessibility_colors.first().all_timeline_titles}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
	/* Bubble titles */
	.timeline .timeline-heading h4 { color: {{if {accessibility_colors.first().all_timeline_titles} }}{{accessibility_colors.first().all_timeline_titles}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
	#team .timeline .timeline-heading h4.subheading { color: {{if {accessibility_colors.first().all_timeline_titles} }}{{accessibility_colors.first().all_timeline_titles}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }



	/* ------------------------------------------------ */
	/*     22. TIMELINE MAIN SUBTITLE & BODY TEXT     */
	/* ------------------------------------------------ */
	section h3.section-subheading { color: {{if {accessibility_colors.first().timeline_body_text_header_subtitle} }}{{accessibility_colors.first().timeline_body_text_header_subtitle}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
	.timeline .timeline-body > p { color: {{if {accessibility_colors.first().timeline_body_text_header_subtitle} }}{{accessibility_colors.first().timeline_body_text_header_subtitle}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }


	/* ------------------------------------------------ */
	/*     23. TIMELINE BUTTON     */
	/* ------------------------------------------------ */

	/* Timeline button */
		.timeline>li .timeline-image h4 a{ color: {{if {accessibility_colors.first().timeline_button} }}{{accessibility_colors.first().timeline_button}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }

		/* ------------------------------------------------ */
	/*     24. TIMELINE BUTTON HOVER    */
	/* ------------------------------------------------ */
		.timeline > li .timeline-image h4 a:hover { color: {{if {accessibility_colors.first().timeline_button_hover} }}{{accessibility_colors.first().timeline_button_hover}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }


	/* ----------------------------------------- */
	/*   25. HOMEPAGE ABOUT SECTION COLORS    */
	/* ----------------------------------------- */
	/* About us section */
	/* Section Headline and body text */
	.portfolio h2 { color: {{if {accessibility_colors.first().homepage_about_section} }}{{accessibility_colors.first().homepage_about_section}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
	.portfolio p { color: {{if {accessibility_colors.first().homepage_about_section} }}{{accessibility_colors.first().homepage_about_section}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }


	/* -------------------------------- */
	/*         26. FOOTER TEXT          */
	/* -------------------------------- */
	/* All footer text including copyright text */
	section#contact .basic { color: {{if {accessibility_colors.first().footer_text} }}{{accessibility_colors.first().footer_text}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
	section#contact p { color: {{if {accessibility_colors.first().footer_text} }}{{accessibility_colors.first().footer_text}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
	section#contact p span { color: {{if {accessibility_colors.first().footer_text} }}{{accessibility_colors.first().footer_text}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }


	/* SIDEBARS */
	/* -------------------------------- */
	/*          27. SECTION LINKS       */
	/* -------------------------------- */
	/* SIDEBARS */
		/* Sidebar: section links */
		/* Sectionlinks headline */
		.body-content .sectionlinks-container h3 a { color: {{if {accessibility_colors.first().sectionlinks} }}{{accessibility_colors.first().sectionlinks}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
		/* Sectionlinks links */
		.body-content .sectionlinks-container ul li a { color: {{if {accessibility_colors.first().sectionlinks} }}{{accessibility_colors.first().sectionlinks}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }


	/* Testimonials Box */
	/* ----------------------------------------- */
	/*    28. TESTIMONIAL HEADER & LOCATION      */
	/* ----------------------------------------- */
	/* Testimonial headline  */
	.body-content .sidebar .testimonial h4 { color: {{if {accessibility_colors.first().testimonial_headline_and_location} }}{{accessibility_colors.first().testimonial_headline_and_location}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
	/* Testimonial name and location */

	.body-content .sidebar .testimonial h6 { color: {{if {accessibility_colors.first().testimonial_headline_and_location} }}{{accessibility_colors.first().testimonial_headline_and_location}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }

	/* ------------------------------------------ */
	/*     29. Testimonial name and body text     */
	/* ------------------------------------------ */
	/* Testimonial text */
	.body-content .sidebar .testimonial p span { color: {{if {accessibility_colors.first().testimonial_name_and_body_text} }}{{accessibility_colors.first().testimonial_name_and_body_text}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
	.body-content .sidebar .testimonial h5 { color: {{if {accessibility_colors.first().testimonial_name_and_body_text} }}{{accessibility_colors.first().testimonial_name_and_body_text}};{{else}}{{accessibility_colors.first().site_wide}};{{end-if}} }
 
</style>
