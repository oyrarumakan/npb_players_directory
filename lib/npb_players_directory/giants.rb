require "yaml"

module NpbPlayersDirectory
  class Giants
    YAML_PATH = "../../config/giants.yml".freeze
    def initialize
      @yaml = load_yaml
    end

    # 選手一覧を返す
    # 定義したlangによって和名と英名を切り替え
    def list_name(lang = :ja)
      target_key = lang == :ja ? "name_ja" : "name_en"
      @yaml.values.map { |player| player[target_key] }
    end

    # 背番号から選手名を返す
    def name_by_uniform_number(number)
      player = @yaml.values.find { |p| p["uniform_number"] == number }
      player ? player["name_ja"] : "No player found for number #{number}"
    end

    def load_yaml
      yaml_path = File.expand_path(YAML_PATH, __dir__)
      YAML.load_file(yaml_path)
    end
  end
end
