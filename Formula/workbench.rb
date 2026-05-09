class Workbench < Formula
  include Language::Python::Virtualenv

  desc "Multi-agent orchestrator that dispatches AI coding agents in parallel"
  homepage "https://github.com/duncankmckinnon/workbench"
  url "https://files.pythonhosted.org/packages/source/w/wbcli/wbcli-0.0.11.tar.gz"
  sha256 "3fa50490818a7d116f80fe1bcb47688934d1e79a4749bb8158daa1ae7f59f497"
  license "MIT"

  depends_on "python@3.12"
  depends_on "git"
  depends_on "tmux"

  resource "click" do
    url "https://files.pythonhosted.org/packages/source/w/wbcli/wbcli-0.0.11.tar.gz"
    sha256 "3fa50490818a7d116f80fe1bcb47688934d1e79a4749bb8158daa1ae7f59f497"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/w/wbcli/wbcli-0.0.11.tar.gz"
    sha256 "3fa50490818a7d116f80fe1bcb47688934d1e79a4749bb8158daa1ae7f59f497"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/source/w/wbcli/wbcli-0.0.11.tar.gz"
    sha256 "3fa50490818a7d116f80fe1bcb47688934d1e79a4749bb8158daa1ae7f59f497"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/source/w/wbcli/wbcli-0.0.11.tar.gz"
    sha256 "3fa50490818a7d116f80fe1bcb47688934d1e79a4749bb8158daa1ae7f59f497"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/source/w/wbcli/wbcli-0.0.11.tar.gz"
    sha256 "3fa50490818a7d116f80fe1bcb47688934d1e79a4749bb8158daa1ae7f59f497"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/source/w/wbcli/wbcli-0.0.11.tar.gz"
    sha256 "3fa50490818a7d116f80fe1bcb47688934d1e79a4749bb8158daa1ae7f59f497"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/wb --help")
  end
end
