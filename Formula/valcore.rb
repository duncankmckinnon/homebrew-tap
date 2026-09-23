class Valcore < Formula
  desc "Develop, improve, and run agentic evaluations locally"
  homepage "https://github.com/duncankmckinnon/valcore"
  url "https://files.pythonhosted.org/packages/source/v/valcore/valcore-0.2.4.tar.gz"
  sha256 "6390fff15bb30734b4dc6cb0323ac8a95ad7b6e4de07ae6fe8269ea37426a035"
  license "Apache-2.0"

  depends_on "uv"

  def install
    libexec.install "packaging/valcore.sh"
    (bin/"valcore").write_env_script libexec/"valcore.sh",
      VALCORE_VERSION: version.to_s
  end

  test do
    assert_match "Usage", shell_output("#{bin}/valcore --help")
  end
end
