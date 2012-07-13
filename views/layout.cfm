<cfoutput>
<!--- Place HTML here that should be used as the default layout of your application --->
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
	    <title>Grand Life | #pageTitle#</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">
		#stylesheetLinkTag("bootstrap")#
		#stylesheetLinkTag("bootstrap-responsive")#
		#stylesheetLinkTag("app")#
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
	      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
	</head>
	<body>
		<header>
			#includePartial("/partials/nav")#
			<section class="container">
			<div class="content-inner">
				  <h1 id="logo" class="pump-up">Grand life social trading site.</h1>
					<cfif params.controller eq "home" and params.action eq "index">
						#includePartial("/partials/topsearch")#
					</cfif>
					</div>
			</section>
		</header>
		
		<!--- Main content --->
		<section class="container-fluid">
			<div class="row-fluid">
				#includeContent()#
				<div class="span3 visible-desktop">
					<p>Trending Sales</p>
				</div>
			</div>
		</section>
		<footer>
		</footer>
		
		#javaScriptIncludeTag("https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")#
		#javaScriptIncludeTag("bootstrap.min")#
		#javaScriptIncludeTag("http://jzaefferer.github.com/jquery-validation/jquery.validate.js")#
		<script type="text/javascript">
		  $(document).ready(function(){
				$('input').hover(function()
				{
				$(this).popover('show')
				});
			});
		  </script>	
	</body>
</html>
</cfoutput>