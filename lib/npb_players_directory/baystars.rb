require "yaml"

class Baystars
  # 選手一覧を返す
  # @param [Symbol] lang
  # @return [Object]
  def list_name(lang = :ja)
    target_key = lang == :ja ? "name_ja" : "name_en"

    yaml_path = File.expand_path("../../config/baystars.yml", __dir__)
    target_yaml = YAML.load_file(yaml_path)

    p(target_yaml.values.map { |player| player[target_key] })
  end
end
