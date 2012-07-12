<cfoutput>
<nav>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
				<div class="nav-collapse collapse">
				<ul class="nav">
				<li class="">
				<a href="./index.html">Overview</a>
				</li>
				<li class="">
				<a href="./scaffolding.html">Scaffolding</a>
				</li>
				<li class="active">
				<a href="./base-css.html">Base CSS</a>
				</li>
				<li class="">
				<a href="./components.html">Components</a>
				</li>
				<li class="">
				<a href="./javascript.html">Javascript plugins</a>
				</li>
				<li class="">
				<a href="./less.html">Using LESS</a>
				</li>
				<li class="divider-vertical"></li>
				<li class="">
				<a href="./download.html">Customize</a>
				</li>
				<li class="">
				<a href="./examples.html">Examples</a>
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