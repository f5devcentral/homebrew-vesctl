class Vesctl < Formula
  desc "Create, debug and diagnose Volterra Services configuration"
  homepage "https://gitlab.com/volterra.io/vesctl"
  url "https://vesio.azureedge.net/releases/vesctl/0.2.46/vesctl.darwin-amd64.gz"
  version "0.2.37"
  sha256 "9ee2c6d2f5c193c54fe01a9ee14704cb9b0f67ac05e2c5f5ddc04f6acd41ddd7"
  def install
    mv "vesctl.darwin-amd64", "vesctl"
    bin.install "vesctl"
  end
  test do
    assert_match "A command line utility to interact with ves service.", shell_output("vesctl help")
    vesctl help
  end
end
