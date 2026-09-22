class Valcore < Formula
  desc "Develop, improve, and run agentic evaluations locally"
  homepage "https://github.com/duncankmckinnon/valcore"
  url "https://files.pythonhosted.org/packages/source/v/valcore/valcore-0.2.2.tar.gz"
  sha256 "23e93ded1690c3d2b60cea55b7d742a5abf3d37cd66f9d93f58764440bdc8a98"
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
