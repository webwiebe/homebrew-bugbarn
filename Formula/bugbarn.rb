class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.372"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.372.tar.gz"
      sha256 "e0095b1bac654186332a34de4a160314e6b8e2a8e55be4ed1bbf3fcb5001bfea"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.372.tar.gz"
      sha256 "a87684f29ee1b803eb030c8e3e903f599345b1174cebf19c2ede9c6e4c47a45c"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
