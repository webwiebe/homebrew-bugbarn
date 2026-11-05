class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.318"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.318.tar.gz"
      sha256 "448e617fd9dfac0e37b6d5992630669b4d228c4fcea8d3b793758649be636804"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.318.tar.gz"
      sha256 "f33159b5ef8ebd95e35c6c444b40861425000908b29e11ff3e8174ddc8c6216f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
