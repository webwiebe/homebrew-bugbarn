class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.251"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.251.tar.gz"
      sha256 "8568cf4176254b2fc185d35e52a7eecda5008c3fef31080b95486e3d312b5aef"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.251.tar.gz"
      sha256 "af48ce863ad98a2c83db8420d603de72f748a995f3794bee41d208a203ede737"
    end
  end

  def install
    bin.install "bb"
  end
end
