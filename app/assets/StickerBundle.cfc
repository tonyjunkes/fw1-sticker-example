component displayname="Core Assets Sticker Bundle"
    output=false
{
    public void function configure(bundle) {
        // JS bundles
        bundle.addAsset(id = "jquery", url = "https://code.jquery.com/jquery-3.2.1.min.js")
              .addAsset(id = "bootstrapjs", url = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js")
              .addAsset(id = "mainjs", path = "/js/main.js");
        
        // JS bundle ordering
        bundle.asset("bootstrapjs").after("jquery");
        bundle.asset("mainjs").after("jquery", "bootstrapjs");

        // CSS bundles
        bundle.addAsset(id = "bootstrapcss", url = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css");
    }
}
