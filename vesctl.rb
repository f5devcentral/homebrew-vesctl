class vesctl < Formula
  desc "Create, debug and diagnose Volterra Services configuration."
  homepage "https://gitlab.com/volterra.io/vesctl"
  url "https://vesio.azureedge.net/releases/vesctl/0.2.15/vesctl.darwin-amd64.gz"
  version "0.2.15"
  sha256 "eabe53f6ab94abb5e8f1ac8db23981ac390450d95e25fc81c652fb92801b1410"
def install
	mv Dir.glob("vesctl-*").first, "vesctl"
	bin.install "vesctl"
  end
  test do
	vesctl help
  end
end