module DerailedBenchmarks
  class TestScript
    attr_reader :app

    def initialize(app)
      @app = app
    end

    def get(url, opts = {})
      response = app.get(url, opts)
      raise "Bad request: #{ response.body }" unless response.status == 200
      response
    end
  end
end
