class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.310"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.310.tar.gz"
      sha256 "9c307e5926a8e4d7d8fcd7c310c30bdeb4d90e9fc771588d1389a4dffd3deda1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.310.tar.gz"
      sha256 "4aa58800e7c9e9d30b4c83472b83a3d47ec155b3ff8cf70f3b8acfad94074441"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
