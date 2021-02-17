class Vesctl < Formula
    desc "Create, debug and diagnose Volterra Services configuration"
    homepage "https://gitlab.com/volterra.io/vesctl"
    url "https://vesio.azureedge.net/releases/vesctl/0.2.15/vesctl.darwin-amd64.gz"
    version "0.2.15"
    sha256 "d4dedca80d3dcb404dd9d67114bf7d00bd935fe620341c3fbb582c44fa753828"
def install
    system "mv vesctl.darwin-amd64 vesctl"
    bin.install "vesctl"
end
    test do
        vesctl help
    end
end
