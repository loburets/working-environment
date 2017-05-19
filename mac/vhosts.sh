        ## CHANGE THIS DOMAINS
        DOMAINS=(
            "shirtpunch.dev"
            "new-valorblocks.loc"
        )

        ## Loop through all sites
        for ((i=0; i < ${#DOMAINS[@]}; i++)); do

            ## Current Domain
            DOMAIN=${DOMAINS[$i]}

            echo "Creating directory for $DOMAIN..."
            sudo mkdir -p /Users/loburec/Desktop/projects/$DOMAIN/public

            echo "Creating vhost config for $DOMAIN..."
            sudo cp /private/etc/apache2/extra/vhosts/example.conf /private/etc/apache2/extra/vhosts/$DOMAIN.conf

            echo "Updating vhost config for $DOMAIN..."
            #replace "example.loc" to $DOMAIN
            sudo sed -i '' -e  "s/example.loc/$DOMAIN/g" /private/etc/apache2/extra/vhosts/$DOMAIN.conf
        done

	    echo "So let's restart apache..."
	    sudo apachectl restart