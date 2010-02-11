<?Lassoscript
Include:'/siteconfig.lasso';
Var:'system_username' = $svSiteUsername;
Var:'system_password' = $svSitePassword;
Var:'mySiteMap' = null;

// TO BE FINISHED
// Write a tag that iterates through all the CMS pages and creates a Google sitemap


// Creates Google sitemap

inline: -username=$system_username, -password=$system_password;
	var:('mySiteMap') = google_sitemap;
	
/* EXAMPLE
	$mySiteMap->addurl(
		-loc='http://www.yoursite.com/',
		-lastmod=date,
		-changefreq='always',
		-priority=1.0);
*/
	$mySiteMap->addurl(
		-loc='http://www.yoursite.com/',
		-lastmod=date,
		-changefreq='always',
		-priority=1.0);

	$mySiteMap->save:(response_path);

/inline;

?>

$mySiteMap = [$mySiteMap]
