class Vesctl < Formula
  desc "Create, debug and diagnose Volterra Services configuration"
  homepage "https://gitlab.com/volterra.io/vesctl"
  url "https://vesio.azureedge.net/releases/vesctl/0.2.23/vesctl.darwin-amd64.gz"
  version "0.2.23"
  sha256 "e4daf087024bf03484741296e8621719a1d47fa62e6d07dca2b263bc16b79048"
  def install
    mv "vesctl.darwin-amd64", "vesctl"
    bin.install "vesctl"
  end
  test do
    assert_match "A command line utility to interact with ves service.", shell_output("vesctl help")
    vesctl help
  end
end
