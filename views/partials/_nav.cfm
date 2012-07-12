<cfoutput>
<nav>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
			<a class="brand" href="##">Grand Life</a>
				<div class="nav-collapse collapse">
				<ul class="nav">
				<li class="">
				<a href="./index.html">Overview</a>
				</li>
				</ul>
				<!--- Login Button --->
				<!--- TODO: Add condition here to check login state and change the button accordingly--->
				<div class="btn-group pull-right">
					<a data-toggle="modal" href="##myModal" class="btn dropdown-toggle"><i class="icon-user"></i>Sign In</a>
				</div>
				</div>
			</div>
		</div>
		</div>
	</nav>
	#includePartial("/partials/loginhead")#
</cfoutput>