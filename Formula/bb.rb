class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.143"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.143.tar.gz"
      sha256 "be72194eb3315c3ba1e196c720068f7b5d935b5f4131cc515d6e0134252700e9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.143.tar.gz"
      sha256 "ce9168651862b6473c03c639887815c65602ea28e8950fd8b734e42407737074"
    end
  end

  def install
    bin.install "bb"
  end
end
