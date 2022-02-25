<cfset rc.title = "Default View" />	<!--- set a variable to be used in a layout --->
<cfoutput>
  <p>This is the default view for FW/1.</p>
  <ul>
    <li><a href="#buildUrl( 'main.hyperExample' )#">Hyper</a></li>
    <li><a href="#buildUrl( 'main.queryExample' )#">qb</a></li>
    <li><a href="#buildUrl( 'main.loggingExample' )#">LogBox</a></li>
    <li><a href="#buildUrl( '?reload=true' )#">Reload</a></li>
  </ul>
</cfoutput>
