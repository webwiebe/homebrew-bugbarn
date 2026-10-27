class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.292"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.292.tar.gz"
      sha256 "7b92434074cc6dc59ccc3f11314803a5088a4b39da4f35b38267c37a60f29454"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.292.tar.gz"
      sha256 "7f9b08e2d0ca861a8ade47778a9a644c3780ff5bbf3779b6e91e48d41d4a3f33"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
