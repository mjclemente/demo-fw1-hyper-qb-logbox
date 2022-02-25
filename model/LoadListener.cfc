component {

  function onLoad(beanFactory) {
    beanfactory
      .declare("StarWarsClient")
      .asValue(new hyper.models.HyperBuilder(baseUrl = "https://swapi.dev/api", timeout = 20))
      .done();
    beanfactory
      .declare("BaseGrammar")
      .instanceOf("qb.models.Grammars.BaseGrammar")
      .done()
      .declare("PostgresGrammar")
      .instanceOf("qb.models.Grammars.PostgresGrammar")
      .done()
      .declare("QueryUtils")
      .instanceOf("qb.models.Query.QueryUtils")
      .done()
      .declare("qb")
      .instanceOf("qb.models.Query.QueryBuilder")
      .withOverrides({grammar: beanfactory.getBean("PostgresGrammar"), utils: beanfactory.getBean("QueryUtils")})
      .asTransient()
      .done();
  beanfactory
    .declare("LogBoxConfig")
    .instanceOf("logbox.system.logging.config.LogBoxConfig")
    .withOverrides({CFCConfigPath: "conf.LogBoxConfig"})
    .done();
  beanfactory
    .declare("LogBoxBase")
    .instanceOf("logbox.system.logging.LogBox")
    .withOverrides({config: beanfactory.getBean("LogBoxConfig")})
    .done();
  beanfactory
    .declare("LogBox")
    .asValue(beanfactory.getBean("LogBoxBase"))
    .done();

    beanFactory.load();
  }


}
