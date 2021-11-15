<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<!--Load the AJAX API-->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	// Load the Visualization API and the corechart package.
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});

	// Set a callback to run when the Google Visualization API is loaded.
	google.charts.setOnLoadCallback(drawChart);

	// Callback that creates and populates a data table,
	// instantiates the pie chart, passes in the data and
	// draws it.
	function drawChart() {
		let chartData;
		//ajax로 데이터 
		$.ajax({
			url : "resource/chart.json",
			dataType : "JSON",
			async : false //동기식 호출
		}).done(function(result){
			chartData = result;
			//동기식
		})
			
		// Create the data table.
		var data = new google.visualization.DataTable();
		data.addColumn('string', 'Topping');
		data.addColumn('number', 'Slices');
		console.log(chart);
		data.addRows(charData);//ajax응답 데이터가 들어갈 자리
		}	
		// Set chart options
		var options = {
			'title' : 'How Much Pizza I Ate Last Night',
			'width' : 400,
			'height' : 300
		};

		// Instantiate and draw our chart, passing in some options.
		var chart = new google.visualization.PieChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);
		google.visualization.events.addListener(chart, 'select', selectHandler);
		function selectHandler(){
			//char.sele 선택한 막대의 값을 읽어보기
			console.log();
		}
	}
</script>
</head>

<body>
	<!--Div that will hold the pie chart-->
	<div id="chart_div"></div>
</body>
</html>