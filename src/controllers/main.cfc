component displayname="Main Controller"
    accessors=true
    output=false
{
    property Sticker;

    public void function default(struct rc) {
        rc.sticker = Sticker.include(assetId = "jquery")
                            .include(assetId = "mainjs")
                            .include(assetId = "bootstrapjs")
                            .include(assetId = "bootstrapcss");
    }
}
