class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.383"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.383.tar.gz"
      sha256 "5752d80045301620afbc8e293f698fc18dd9fdc403e8e89d0ae3dcab19197ef2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.383.tar.gz"
      sha256 "5025d2683f9bd74fdd613138e1c1fc91a84750d7282847420c47f0bcd39fc24f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
