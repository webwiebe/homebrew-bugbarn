class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.198"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.198.tar.gz"
      sha256 "769783624ecc2edf53aac9035545075b738e5893a4d67017f9627950c7ecc003"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.198.tar.gz"
      sha256 "6385cb83296fe35527cfa16700a2f5836caf7daade1a41e3cfbb04bf61af6270"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
