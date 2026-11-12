class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.361"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.361.tar.gz"
      sha256 "3260dfb92621d6f050617d0a059f939a5d15291cb7335fd9c123153eb6cdedce"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.361.tar.gz"
      sha256 "f5c67573dfe4fd12a76bfeecd2bdf882cf103ef66a1645bc1c6e0c57704b8a4e"
    end
  end

  def install
    bin.install "bb"
  end
end
