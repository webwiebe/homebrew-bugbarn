class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.345"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.345.tar.gz"
      sha256 "1a1fbcdd83b3e2f1dbab75dd5e606b753698171bacdcf0ac198818023c38ed4b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.345.tar.gz"
      sha256 "60d2dede83e8cd3305a5322e5cb7763be0b0bee446ea20ce31e7c84f0940a285"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
