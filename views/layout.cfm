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
		#stylesheetLinkTag("http://fonts.googleapis.com/css?family=Droid+Sans")#
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
		    	<div class="logo">
				  <h1 id="logo" class="pump-up">Grand life social trading site.</h1>
				  <p>One light, one goal, one mind, unlimited possibilities!</p>
				</div>
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
				<div class="span3 well visible-desktop">
					<h4>Trending Sales</h4>
				</div>
			</div>
		</section>
		<footer class="container-fluid">
			<div class="row visible-phone">
				<div class="span3">#linkTo(action="login", text="Sign In")#</div>
				<div class="span3">#linkTo(action="tos", Text="Terms")#</div>
				<div class="span3">#linkTo(action="copyright", Text="&copy 2012 Grand Life")#</div>
			</div>
			<div class="row hidden-phone footer-nav">
				<div class="span3 offset3">
					<ul>
						<li>About Us</li>
						<li>Contact us</li>
						<li>Help</li>
						<li>#linkTo(text="#imageTag("footer.png")#", controller="home", action="index")#</li>
					</ul>
				</div>
				<div class="span3">
					<ul>
						<li>Meet the team</li>
						<li>Affiliate/Reseller program</li>
						<li>Locate resellers</li>
					</ul>
				</div>
				<div class="span3">
					<ul>
						<li>Follow us</li>
						<li>Banks</li>
					</ul>
				</div>
			</div>
		</footer>
		
		<cfif get("environment") is "design">
			#javascriptIncludeTag("jquery-1.7.2.min")#
		<cfelse>
			#javascriptIncludeTag("jquery-1.7.2.min")#
			<!--- TODO: Uncomment for production release #javaScriptIncludeTag("https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")# --->
		</cfif>
		#javaScriptIncludeTag("bootstrap.min")#
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