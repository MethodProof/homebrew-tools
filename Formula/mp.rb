class Mp < Formula
  include Language::Python::Virtualenv

  desc "Capture and visualize your engineering process as a knowledge graph"
  homepage "https://github.com/MethodProof/methodproof-cli"
  url "https://files.pythonhosted.org/packages/source/m/methodproof/methodproof-0.7.36.tar.gz"
  sha256 "d209b6445b300db80f10bee088088c2018f8a2f0fa5aa398a8edce239228ce1a"
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
