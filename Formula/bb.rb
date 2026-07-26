class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.158"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.158.tar.gz"
      sha256 "472c9290f1e7fbd96bacce3093c89f64b1196c27baeaf0127d3e5af0de8f0502"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.158.tar.gz"
      sha256 "a3457e5779473a3c50de769c6ef92b1cb7beccc32759665525ff6c6179f9b6f6"
    end
  end

  def install
    bin.install "bb"
  end
end
