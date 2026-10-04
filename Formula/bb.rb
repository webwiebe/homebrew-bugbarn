class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.196"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.196.tar.gz"
      sha256 "4cfecefeb250f2e2dabadfa1accae6f3701f6ccfa7d69ddae09dee8ba4fa661b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.196.tar.gz"
      sha256 "f808b8e4e38645ba619aa9a22e13d97e4b9f1161926264fdee05d2cfff536e3f"
    end
  end

  def install
    bin.install "bb"
  end
end
