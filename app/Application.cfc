component
	output=false
{
	this.name = hash(getBaseTemplatePath() & hash(randRange(5, 1000)));
	this.applicationTimeout = createTimeSpan(0, 2, 0, 0);
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);
	this.mappings = {
		"/src" = expandPath("../src"),
		"/framework" = expandPath("../src/framework"),
		"/sticker" = expandPath("../src/subsystems/sticker")
	};

	public Bootstrap function _get_framework_one() {
		if (!request.keyExists("_framework_one")) {
			request._framework_one = new src.conf.Bootstrap();
		}
		return request._framework_one;
	}

	public void function onApplicationStart() {
		return _get_framework_one().onApplicationStart();
	}

	public void function onError(exception, event) {
		return _get_framework_one().onError(exception, event);
	}

	public void function onRequest(targetPath) {
		return _get_framework_one().onRequest(targetPath);
	}

	public void function onRequestEnd() {
		return _get_framework_one().onRequestEnd();
	}

	public void function onRequestStart(targetPath) {
		return _get_framework_one().onRequestStart(targetPath);
	}

	public void function onSessionStart() {
		return _get_framework_one().onSessionStart();
	}
}
