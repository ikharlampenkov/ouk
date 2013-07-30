// Avoid `console` errors in browsers that lack a console.
(function() {
    var method;
    var noop = function () {};
    var methods = [
        'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
        'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
        'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
        'timeStamp', 'trace', 'warn'
    ];
    var length = methods.length;
    var console = (window.console = window.console || {});

    while (length--) {
        method = methods[length];

        // Only stub undefined methods.
        if (!console[method]) {
            console[method] = noop;
        }
    }
}());

$(document).ready(function() {
	$('#slideshow').rhinoslider({
		effect: 'fade',
		showTime: 4000,
		effectTime: 1500,
		randomOrder: true,
		controlsMousewheel: false,
		controlsKeyboard: false,
		controlsPrevNext: false,
		controlsPlayPause: false,
		autoPlay: true,
		showBullets: 'never',
		showControls: 'never'
	});
});

$('.allmap a').click(function() {
    var tab_id=$(this).attr('id');
    tabClick(tab_id)
});
function tabClick(tab_id) {
    if (tab_id != $('.allmap a.active').attr('id') ) {
        $('.allmap .tabs').removeClass('active');
        $('#'+tab_id).addClass('active');
        $('#con_' + tab_id).addClass('active');
    }    
}