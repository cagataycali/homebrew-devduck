class Devduck < Formula
  include Language::Python::Virtualenv

  desc "Extreme minimalist self-adapting AI agent"
  homepage "https://github.com/cagataycali/devduck"
  url "https://files.pythonhosted.org/packages/source/d/devduck/devduck-0.5.2.tar.gz"
  sha256 "bb43f99a0310da96b081ec187ef9412c3254c4fed48dc3e88578de6b31b6e570"
  license "Apache-2.0"

  depends_on "python@3.13"

  resource "strands-agents" do
    url "https://files.pythonhosted.org/packages/e0/bd/160ad34c1b635ee534f0dd8de009097fff849101a847a0ae160b73f7aa41/strands_agents-1.16.0.tar.gz"
    sha256 "661e1fcf7e86e11277b5b15c827ca5abe00dfc425bb39036f85c0ebffedd11d7"
  end

  resource "strands-agents-tools" do
    url "https://files.pythonhosted.org/packages/73/13/1bfee42bd162443abdd5e2a23e45cef2f651d7fc30967247d201c8603ac0/strands_agents_tools-0.2.15.tar.gz"
    sha256 "5f3b5a4a6683479100cbe9e1151e7c7674f76a832c7271d1e2811e7efdd5c14d"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/a1/96/06e01a7b38dce6fe1db213e061a4602dd6032a8a97ef6c1a862537732421/prompt_toolkit-3.0.52.tar.gz"
    sha256 "28cde192929c8e7321de85de1ddbe736f1375148b02f2e17edd840042b1be855"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "DevDuck", shell_output("#{bin}/devduck --help")
  end
end
