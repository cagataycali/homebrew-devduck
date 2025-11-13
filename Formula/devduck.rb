class Devduck < Formula
  include Language::Python::Virtualenv

  desc "Extreme minimalist self-adapting AI agent"
  homepage "https://github.com/cagataycali/devduck"
  url "https://files.pythonhosted.org/packages/source/d/devduck/devduck-0.4.0.tar.gz"
  sha256 "615cb151704760ca026b8c3aa0bbd9a8a87cdd9c0921f19efb4ab0b3f8325dc6"
  license "MIT"

  depends_on "python@3.11"

  resource "strands-agents" do
    url "https://files.pythonhosted.org/packages/source/s/strands-agents/strands-agents-0.1.0.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_HASH"
  end

  resource "strands-agents-tools" do
    url "https://files.pythonhosted.org/packages/source/s/strands-agents-tools/strands-agents-tools-0.1.0.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_HASH"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/source/p/prompt-toolkit/prompt_toolkit-3.0.43.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_HASH"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "DevDuck", shell_output("#{bin}/devduck --help")
  end
end
