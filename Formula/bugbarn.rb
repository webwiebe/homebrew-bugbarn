class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.118"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.118.tar.gz"
      sha256 "855e6d59d13fb2e66ff3bdeb1099a3f5a514359054301bfc82e28bb825e04156"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.118.tar.gz"
      sha256 "1b5bcc355ea137379943fc2979ee36d334dd75cbf7870ced822ade72f2bc6247"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
