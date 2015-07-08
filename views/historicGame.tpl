<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="B.A.S.E.S." content="">
  <meta name="" content="">
  <link rel="icon" href="/static/icons/favicon.ico">

  <title>B.A.S.E.S.</title>

  <!-- Bootstrap core CSS -->
  <link href="static/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="static/css/jumbotron-narrow.css" rel="stylesheet">

  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

  <script type="text/javascript" src="/static/js/submit_teams.js" charset="utf-8"></script>

  <script type="text/javascript" src="/static/js/dist/jstree.js" charset="utf-8"></script>
  <link rel="stylesheet" href="/static/js/dist/themes/default/style.min.css">

  <link rel="stylesheet" href="/static/css/custom.css">

  <link href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/css/select2.min.css" rel="stylesheet" />
  <script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.min.js"></script>
</head>

<body>

  <div class="container">
    <div class="header clearfix">
      <nav>
        <ul class="nav nav-pills pull-right">
          <li role="presentation"><a href="/">Home</a></li>
          <li role="presentation" class="active"><a href="/historicGame">Historic Game</a></li>
          <li role="presentation"><a href="/about">About</a></li>
        </ul>
      </nav>
      <h3 class="text-muted main-title">B.A.S.E.S.</h3>
    </div>

    <div class="jumbotron">
      <h1>Historical Games</h1>
    </div>

    <div class="row marketing center-content">
      <div class="col-md-12">
        <h4>Here you can select a previously simulated game and view the results!</h4>
        <p>Since we are able to simulate baseball games, provided two teams, wouldn't it be nice to revisit a game already simulated? That's why we provided this tool to allow the user to select a previously simulate game and either: view the results of the game or print out the game file!</p>
      </div>
      <div class="col-md-6">
        <h4>Game Browser</h4>
        <script>
          $(function () {
            // 6 create an instance when the DOM is ready
            $('#jstree').jstree({ 'core' : {
              'data' : [
              {
                'id': 'game_1',
                'parent' : '#',
                "text" : 'Game 1'
              },
              {
                'id': 'game_2',
                'parent' : '#',
                "text" : 'Game 2'
              },
              {
                'id': 'game_3',
                'parent' : '#',
                "text" : 'Game 3'
              }
             ]
           } });
            // 7 bind to events triggered on the tree
            $('#jstree').on("changed.jstree", function (e, data) {
              console.log(data.selected);
            });
            // 8 interact with the tree - either way is OK
            $('button').on('click', function () {
              $('#jstree').jstree(true).select_node('child_node_1');
              $('#jstree').jstree('select_node', 'child_node_1');
              $.jstree.reference('#jstree').select_node('child_node_1');
            });
          });
</script>
<!-- 3 setup a container element -->
<div id="jstree">
  <!-- in this example the tree is populated from inline HTML -->
<!--   <ul>
    <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}' id="child_node_1">Game 1</li>
    <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}' id="child_node_2">Game 2</li>
  </ul> -->
</div>
</div>
<div class="col-md-6">
  <h4>Load a Game File</h4>
</div>
</div>

<footer class="footer">
  <center>
    <p>Created By Reid Cooper, Philip DiMarco, Mary Menges, and Nicholas-Jason Roache, and Professor Gil Eckert</p>
    <p>&copy; Monmouth University
      2015<script>new Date().getFullYear()>2015&&document.write("-"+new Date().getFullYear());</script>
    </p>
  </center>
</footer>

</div> <!-- /container -->
</body>
</html>