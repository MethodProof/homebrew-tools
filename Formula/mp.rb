class Mp < Formula
  include Language::Python::Virtualenv

  desc "Capture and visualize your engineering process as a knowledge graph"
  homepage "https://github.com/MethodProof/methodproof-cli"
  url "https://files.pythonhosted.org/packages/source/m/methodproof/methodproof-0.8.2.tar.gz"
  sha256 "9820a80be2a40ceeeb5064528e0654ab4e333b5651a3fda0abe69c7b4ff41ca4"
  license "Apache-2.0"

  depends_on "python@3.13"

  resource "watchdog" do
    url "https://files.pythonhosted.org/packages/source/w/watchdog/watchdog-6.0.0.tar.gz"
    sha256 "9ddf7c82fda3ae8e24decda1338ede66e1c99883db93711d8fb941eaa2d8c282"
  end

  resource "websocket-client" do
    url "https://files.pythonhosted.org/packages/source/w/websocket-client/websocket_client-1.8.0.tar.gz"
    sha256 "3239df9f44da632f96012472805d40a23281a991027ce11d2f45a6f24ac4c3da"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "methodproof", shell_output("#{bin}/methodproof --help")
  end
end
