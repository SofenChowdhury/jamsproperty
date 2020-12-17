(function($) {
    "use strict";
	$('#container').showmore({
		closedHeight: 250,
		buttonTextMore: 'Show more',
		buttonTextLess: 'Close',
		buttonCssClass: 'showmore-button',
		animationSpeed: 0.5
	});
	$('#container1').showmore({
		closedHeight: 350,
		buttonTextMore: 'Show more',
		buttonTextLess: 'Close',
		buttonCssClass: 'showmore-button',
		animationSpeed: 0.5
	});
	$('#container2').showmore({
		closedHeight: 280,
		buttonTextMore: 'Show more',
		buttonTextLess: 'Close',
		buttonCssClass: 'showmore-button',
		animationSpeed: 0.5
	});
	$('#container3').showmore({
		closedHeight: 450,
		buttonTextMore: 'Show more',
		buttonTextLess: 'Close',
		buttonCssClass: 'showmore-button',
		animationSpeed: 0.5
	});
	$('.hide-details').showmore({
		closedHeight: 115,
		buttonTextMore: 'Show more',
		buttonTextLess: 'Close',
		buttonCssClass: 'showmore-button1',
		animationSpeed: 0.5
	});
	if (document.documentElement.clientWidth < 900) {
		$('#container1').showmore({
			closedHeight: 450,
			buttonTextMore: 'Show more',
			buttonTextLess: 'Close',
			buttonCssClass: 'showmore-button',
			animationSpeed: 0.5
		});
	}
	$( "#mySlider" ).slider({
		range: true,
		min: 1000,
		max: 100000000,
		values: [ 1000, 50000000 ],
		slide: function( event, ui ) {
			$( "#price-min" ).val(ui.values[ 0 ]);
			$( "#price-max" ).val(ui.values[ 1 ] );
		}
	});

	$( "#price-min" ).val($( "#mySlider" ).slider( "values", 0 ));

	$( "#price-max" ).val($( "#mySlider" ).slider( "values", 1 ) );

})(jQuery);