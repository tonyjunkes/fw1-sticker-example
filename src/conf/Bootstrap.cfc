component displayname="FW/1 Lifecycle Bootstrap" extends="framework.one"
	output=false
{
	// FW/1 settings
	variables.framework = {
		base: "/src",
		defaultSection: "main",
		defaultItem: "default",
		error: "main.error",
		diEngine: "di1",
		diConfig: { },
		routes: [
			{ "/" = "/main/default" }
		],
		subsystems: {
            sticker: {
                diLocations: ["/sticker"],
		        diConfig: {
                    loadListener: function(di1) {
                        di1.declare("BundleManager").instanceOf("sticker.util.BundleManager").done()
						   .declare("Sticker").instanceOf("sticker.Sticker")
						   .withOverrides({ _setBundleManager: di1.getBean("BundleManager") });
                    }
                }
            }
        },
		trace = true,
		reloadApplicationOnEveryRequest = true
	};

	public void function setupApplication() {
        // Get instance
        var Sticker = getBeanFactory("sticker").getBean("Sticker");
        // Add sticker bundles
        Sticker.addBundle(rootDirectory="/assets", rootUrl="http://127.0.0.1:57494/assets");
        // Load bundle and create a global instance of the object
        getBeanFactory().declare("Sticker").asValue(Sticker.load());
    }

	public void function setupEnvironment(string env) { }

	public void function setupSession() { }

	public void function setupRequest() { }

	public void function setupResponse(struct rc) { }

	public void function setupSubsystem(string module) { }

	public void function setupView(struct rc) { }

	public string function onMissingView(struct rc) {
		return "Error 404 - Page not found.";
	}
}
