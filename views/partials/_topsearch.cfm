<cfoutput>

	  <div class="full-search-bar">
	    <ul class="item-stream unstyled search-input-stream">
	      <li class="stream-item stream-header search-input-item">
		    #startFormTag(action="search", class="form-inline search-form")#
	          	<input class="xlarge ui-autocomplete-input" id="artist_search" name="q" type="text" placeholder="" value="" role="textbox">
	          	<button class="btn btn-large btn-inverse" id="artist_submit" type="submit"><i class="icon-search icon-white"></i></button>
          	#endFormTag()#     
		</li>
	    </ul>
	

</cfoutput>