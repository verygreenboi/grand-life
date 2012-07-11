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
		#stylesheetLinkTag("columnal")#
		#stylesheetLinkTag("custom")#
		#stylesheetLinkTag("build")#
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
	      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
	</head>
	<body class="container">
		<!--- Header --->
		<header class="row">
			<div class="col_4"><h1 id="logo">Logo goes here</h1></div>
			<div class="forms col_7">
				<cfif params.controller eq "Home" AND params.action eq "index">
					<div class="topforms">#includePartial("/partials/homehead")#</div>
				<cfelseif params.controller eq "Home" and params.action eq "login">
					#includePartial("/partials/loginhead")#
				</cfif>
			</div>
		
		</header>
		
		<!--- /Header --->
		
		<!--- Section: Main content --->
		<section class="main">
			<cfoutput>#includeContent()#</cfoutput>
		</section>
		
		<!--- /Section: Main content --->
		
		<!--- Aside: Trend --->
		
		<aside>
			
		</aside>
		<!--- /Aside --->
		
		<!--- Footer --->
		
		<footer>
		</footer>
		#javaScriptIncludeTag("https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")#
	</body>
</html>
</cfoutput>