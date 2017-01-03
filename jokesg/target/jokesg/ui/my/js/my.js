$(document).ready(function() {
	
	function pro(tit,cont) {
		new jBox('Notice', {
			attributes : {
				x : 'right',
				y : 'bottom'
			},
			stack : false,
			animation : {
				open : 'tada',
				close : 'zoomIn'
			},
			color : getColor(),
			title : tit,
			content : cont
		});
	};
	
	var colors = [ 'red', 'green', 'blue', 'yellow' ], index = 0;
	var getColor = function() {
		(index >= colors.length) && (index = 0);
		return colors[index++];
	};

});

