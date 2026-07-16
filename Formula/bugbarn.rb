class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.147"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.147.tar.gz"
      sha256 "49b9f4d106fe4e8cb1a4632bd9cca87306634b547850c809ebc318eb2ee6ca11"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.147.tar.gz"
      sha256 "81ffe90eaddff7f9d14a46ea89238c7edd6e0c348943ec37008847b73dc6778a"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
