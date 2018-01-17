#!/bin/bash


# If we pass any arguments...
if [ $# -gt 0 ]; then
	
	# Organise CSS components function
	if [ "$1" == "css" ]; then
		shift 1
		echo "====================="
		echo "Creating styles folder in stylesheets directory"
		echo "====================="
		mkdir app/assets/stylesheets/styles
		echo "====================="
		echo "Generating sass files"
		echo "====================="
		touch app/assets/stylesheets/styles/ _00_fontface.sass app/assets/stylesheets/styles/_00_variables.sass app/assets/stylesheets/styles/_10_layout.sass app/assets/stylesheets/styles/_10_typography.sass app/assets/stylesheets/styles/_20_animations.sass app/assets/stylesheets/styles/_20_buttons.sass app/assets/stylesheets/styles/_20_icons.sass app/assets/stylesheets/styles/_20_links.sass app/assets/stylesheets/styles/_30_footer.sass app/assets/stylesheets/styles/_30_nav.sass app/assets/stylesheets/styles/_40_home.sass
		echo "====================="
		echo "Converting application.css file to a sass file"
		echo "====================="
		mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.sass
		echo "====================="
		echo "Import newly generated sass files into application.css.sass"
		echo "====================="
		printf "\n@import './styles/*'" >> app/assets/stylesheets/application.css.sass
		echo "====================="
		echo "All done, baby."
		echo "====================="
	else
		echo "Not working"
	fi

else
	echo "No function selected"
fi
