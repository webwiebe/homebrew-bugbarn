class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.176"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.176.tar.gz"
      sha256 "c5fa7b94b1a4a4ab03dcc52673b729a16c656d45fa564bfe1510a256a4fa78a3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.176.tar.gz"
      sha256 "e0033c02b5d1938c7846e59394ca4459a23e1e31b86e456bbfd135b84ac502d0"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
