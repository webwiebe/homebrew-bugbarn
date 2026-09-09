class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.179"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.179.tar.gz"
      sha256 "c93622f9de95bab3dd6f53eaf49fd73e653e950b6c01b71c7836fa919259437a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.179.tar.gz"
      sha256 "264a0966676162b9fd6283e26e9ca773aed42ea949bc74c07265d2e581acdc7c"
    end
  end

  def install
    bin.install "bb"
  end
end
