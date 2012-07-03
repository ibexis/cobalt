# ScraperWiki Cobalt #

Cobalt is a ScraperWiki service where people can run code on the internet in
a sandboxed environment.

### Dependencies ###

3 git repositories are needed (cobalt, lithium, swops-secret).  They should
be cloned side-by-side.  Pick a new directory if you want.

    git clone git@bitbucket.org:ScraperWiki/swops-secret.git
    git clone git@github.com:scraperwiki/lithium.git
    git clone git@github.com:scraperwiki/cobalt.git
    
Lithium and Cobalt both have their own dependencies for Node packages. You'll need to install them when you first clone, and then every now and then as the dependencies change:

    for d in lithium cobalt; do ( cd $d; npm install ) done
    
Running this when you don't need to is fine – it doesn't take very long.

### Coming Back ###

Don't forget to sync your repositories:

    for d in lithium cobalt swops-secret; do ( cd $d; git pull ) done

(you need to 'npm install' every now and then too)

### Getting Started ###

You need to set up the environment and so on:
    
    cd lithium
    . ../swops-secret/keys.sh
    . ./activate

### Using Lithium ###

Using lithium spends money.  Not much.

    li
    li list
    li create boxecutor
    li start boxecutor_1
    li deploy boxecutor_1

### Server States ###

                              .---------stop----------.
                              v                       |
    +-----+            +-------------+           +---------+
    |     | --create-> | not running | --start-> | running |
    +-----+            +-------------+           +---------+
       ^                      |                       |
       `-------------------destroy--------------------'
                            


