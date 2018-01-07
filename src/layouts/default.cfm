<!DOCTYPE html>
<cfoutput>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>FW/1 &amp; Sticker Example</title>
        #rc.sticker.renderIncludes(type = "css")#
    </head>

    <body>
        <main>
            <div class="jumbotron">
                <div class="container text-center">
                    #body#
                </div>
            </div>
        </main>
    </body>
    #rc.sticker.renderIncludes(type = "js")#
</html>
</cfoutput>
