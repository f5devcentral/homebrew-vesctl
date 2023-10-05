class Vesctl < Formula
  desc "Create, debug and diagnose Volterra Services configuration"
  homepage "https://gitlab.com/volterra.io/vesctl"
  url "https://vesio.azureedge.net/releases/vesctl/0.2.46/vesctl.darwin-amd64.gz"
  version "0.2.46"
  sha256 "6147b6c9c93a5d9c61f7d495ba47fa03c098761b34d6775f0e493e9c34a685d3"
  def install
    mv "vesctl.darwin-amd64", "vesctl"
    bin.install "vesctl"
  end
  test do
    assert_match "A command line utility to interact with ves service.", shell_output("vesctl help")
    vesctl help
  end
end
