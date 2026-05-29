class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.41.tar.gz"
      sha256 "43b8c871f788ac0d73ba64a112f9f6bfbdff91c2ce5a807fde98a62373ebe9c8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.41.tar.gz"
      sha256 "f0afbe793e2057762c51f24dee7f3328e9286bbd6e64497843e5df1f5bbdbc68"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
