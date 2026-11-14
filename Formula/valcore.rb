class Valcore < Formula
  desc "Develop, improve, and run agentic evaluations locally"
  homepage "https://github.com/duncankmckinnon/valcore"
  url "https://files.pythonhosted.org/packages/source/v/valcore/valcore-0.2.7.tar.gz"
  sha256 "2957163456990df6faf14ce8f5df4bf6c5fa88e3538ce94680807ff9e8be05cd"
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
