class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.367"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.367.tar.gz"
      sha256 "382df931b5e98c1bfd2f1125d77799fcea83b40776ff491baa776ae223e791ad"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.367.tar.gz"
      sha256 "b9f89d3d7c9777ecbcb8c38efcefd4f0d9ebcfc2ac3030d4475ac3eacf709f62"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
