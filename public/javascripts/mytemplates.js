
// Register a templates definition set named "default".
CKEDITOR.addTemplates( 'default',
{
	// The name of sub folder which hold the shortcut preview images of the
	// templates.
	imagesPath : CKEDITOR.getUrl( CKEDITOR.plugins.getPath( 'templates' ) + 'templates/images/' ),

	// The templates definitions.
	templates :
		[
			
			{
				title: 'FOBS Two column template',
				image: 'template2.gif',
				description: 'A template that defines two columns, each one with a title, and some text.',
				html:
					'<div id = "oneortwo">' + 
					   '<p>' +
								'<img style="margin-right: 10px" height="100" width="100" align="left"/>' +
								'Type the title here'+
							'</p>'+
						'<p> Right click the image place-holder and select image properties to add an image or delete this one if you do not need the image. Replace this and other text as you wish. If you type the RETURN key you will automatically create a new paragraph. If all you need is a new-line then type SHIFT + RETURN . <br/><br/>' +
						'It will help you a lot if you click the "Show blocks" button in the penultimate section and last row of the toolbar, next to the question mark button. <br/><br/>' +
						'Highlight all of this text to delete or replacce with your own' +
						'</p>' +
					'</div>' +
					'<div id="sidebar">' +
						'<p>Sidebar content</p>' + 
					'</div>'
			}, 
			 
			{
				title: 'FOBS Single column template',
				image: 'template1.gif',
				description: 'A template that defines only one column - no side bar',
				html:
					'<div id="content">' + 
					  '<p>' +
							'<img style="margin-right: 10px" height="100" width="120" align="center"/>' +
							'Type the title here'+
						'</p>'+
						'<p> Right click the image place-holder  and select image properties to add an image or delete this one if you do not need the image. Replace this and other text as you wish. If you type the return key you will automatically create a new paragraph. If all you need is a new-line then type SHIFT + RETURN .<br/><br/>' +
				      	'It will help you a lot if you click the "Show blocks" button in the penultimate section and last row of the toolbar, next to the question mark button. <br/><br/>' + 
						    	'Highlight all of this text to delete or replacce with your own' + 
						'</p>' +
					'</div>'
			}
			
			
		]  
		
});
