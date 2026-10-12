class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.218"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.218.tar.gz"
      sha256 "b0f5b7a46a32ac34f37577f6165eb7c2f18c294347b2daa0015244487dd0ae19"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.218.tar.gz"
      sha256 "cad3e59dffe383a42981e7e92de9e6495511575818d94d724b745bc491bf8f66"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
