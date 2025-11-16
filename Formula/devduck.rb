class Devduck < Formula
  include Language::Python::Virtualenv

  desc "Extreme minimalist self-adapting AI agent"
  homepage "https://github.com/cagataycali/devduck"
  url "https://files.pythonhosted.org/packages/source/d/devduck/devduck-0.5.2.tar.gz"
  sha256 "bb43f99a0310da96b081ec187ef9412c3254c4fed48dc3e88578de6b31b6e570"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    venv = virtualenv_create(libexec, "python3.13")
    # Install directly from PyPI to get all dependencies
    system libexec/"bin/pip", "install", "--upgrade", "pip"
    system libexec/"bin/pip", "install", "devduck==0.5.2"
    bin.install_symlink libexec/"bin/devduck"
  end

  test do
    assert_match "DevDuck", shell_output("#{bin}/devduck --help")
  end
end
