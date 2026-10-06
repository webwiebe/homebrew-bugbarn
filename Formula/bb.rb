class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.214"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.214.tar.gz"
      sha256 "d839c6895a77d0120429e6f42bdbfe834d89460151a7360311ce885af83cba18"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.214.tar.gz"
      sha256 "5beca38f7997dc3945955a178b26641b32f94496476a0867e7a8e79aa84abc1f"
    end
  end

  def install
    bin.install "bb"
  end
end
