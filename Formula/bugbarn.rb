class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.187"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.187.tar.gz"
      sha256 "7f3a9fa5f95dc430a78d17920533a520e3f10a11c6a5a5e9cd03aacc01507686"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.187.tar.gz"
      sha256 "2ca1aacca94d73c65857f33615f08bc44a161c8c8ba47ab872e7b6309d49151e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
