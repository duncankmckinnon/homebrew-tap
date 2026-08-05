class Valcore < Formula
  desc "Develop, improve, and run agentic evaluations locally"
  homepage "https://github.com/duncankmckinnon/valcore"
  url "https://files.pythonhosted.org/packages/source/v/valcore/valcore-0.0.3.tar.gz"
  sha256 "2e0b156a94950039e665760c51d65fb5b261c35c8bdf40982594b2673062d044"
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
