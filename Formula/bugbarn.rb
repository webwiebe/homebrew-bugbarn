class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.130"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.130.tar.gz"
      sha256 "b6ab4cef2b50cd9e4cacbb875b22d647dbda50689c680d981c3a56ca47ec1f78"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.130.tar.gz"
      sha256 "42207dfd9b9493c98513804bb863e709edf5534da12486f7c0ae48d9454344b5"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
