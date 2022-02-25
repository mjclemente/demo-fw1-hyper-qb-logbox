component accessors="true" {

  property beanFactory;
  property StarWarsClient;

  function init(any LogBox) {
    variables.LogBox = LogBox;
    variables.logger = variables.LogBox.getLogger(this);
    return this;
  }

  public void function loggingExample(rc) {
    variables.logger.info("I am an interesting and helpful message");
    variables.logger.error("Danger Will Robinson!");
    writeOutput("If you're tailing the log, you should see an error and an info message");
    abort;
  }

  public void function hyperExample(rc) {
    var luke = StarWarsClient.get("/people/1");
    writeDump(var = "#luke.getData()#", abort = "true");
  }

  public void function queryExample(rc) {
    var qb = variables.beanFactory.getBean("qb");

    var example = qb
      .table("test")
      .select([
        "post_id",
        "author_id",
        "title",
        "body",
      ])
      .whereLike("author", "Ja%")
      .orderBy("published_at");

    // to run the query: example.get()

    // just dump generated sql, with params
    writeDump(var = "#example.toSQL(true)#", abort = "true");
  }

}
