component extends="framework.one" {

this.mappings = {
  "/hyper"      : expandPath("./modules/hyper"),
  "/qb"         : expandPath("./modules/qb"),
  "/cbpaginator": expandPath("./modules/qb/modules/cbpaginator"),
  "/logbox"     : expandPath("./modules/logbox"),
};

  variables.framework = {diConfig: {loadListener: "LoadListener"}};

  function setupRequest() {
    // use setupRequest to do initialization per request
    request.context.startTime = getTickCount();
  }

}
