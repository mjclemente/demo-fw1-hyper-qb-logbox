component {
  void function configure() {
    variables.logBox = {
      appenders: {
        "ExampleConsole": {
          class   : "logbox.system.logging.appenders.ConsoleAppender",
          levelMax: "INFO",
          levelMin: "FATAL",
        },
      },
      root: {levelmax: "DEBUG", levelMin: "FATAL", appenders: "*"},
    };
  }
}
