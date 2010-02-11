<?Lassoscript
// Last modified 8/31/09 by ECL, Landmann InterActive
/*
Tagdocs;
	{Tagname=			OutputImageMed }
	{Description=		Outputs the already-built $vImage_Med }
	{Author=			Eric Landmann }
	{AuthorEmail=		support@iterate.ws }
	{ModifiedBy=		}
	{ModifiedByEmail=	}
	{Date=				7/6/09 }
	{Usage=				OutputImageMed }
	{ExpectedResults=	HTML for the Medium Image }
	{Dependencies=		$vImage_Med must be defined, otherwise a comment will be output }
	{DevelNotes=		$vImage_Med is defined in build_detail.inc
						This tag is merely a convenience to make it less awkward for a designer }
	{ChangeNotes=		8/31/09
						Integrated into itPage codebase. }
/Tagdocs;
*/
If: !(Lasso_TagExists:'OutputImageMed');
	Define_Tag:'OutputImageMed',
		-Description='Outputs the medium image (in $vImage_Med)';

		Local('Result') = null;

		// Check if var is defined
		If: (Var:'vImage_Med') != '';

			#Result += '<!-- OutputImageMed -->\n';
			#Result += '\t<div class="ContentPanelImage">\n';
			#Result += '\t\t<img src="'($svImagesMdPath)($vImage_Med)'" alt="'($vImage_Med)'">\n';
			#Result += '\t</div>\n';
			Return: (Encode_Smart:(#Result));

		Else;

			// Output a comment that variable is not defined
			#Result = '<!-- OutputImageMed: Image_Med is undefined -->\n';

			Return: (Encode_Smart:(#Result));

		/If;

	/Define_Tag;

	Log_Critical: 'Custom Tag Loaded - OutputImageMed';

/If;
?>
