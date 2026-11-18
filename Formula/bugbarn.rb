class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.384"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.384.tar.gz"
      sha256 "1477c34eef4ee3fed31af74e9f9eb164534ca65f04b661c7ef271e3b1ba9ade1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.384.tar.gz"
      sha256 "bd968b2b6c03888ce6510b1e1647b3f3e8ed5755e1797c3573bcc8bbd09225a6"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
