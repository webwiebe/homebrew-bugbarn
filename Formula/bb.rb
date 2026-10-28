class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.298"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.298.tar.gz"
      sha256 "158150398af6c292ce95aeedbdba107f0ad1d57fc615cd760a59796a24ea186c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.298.tar.gz"
      sha256 "c1bb670a1aaba7c3b5a8d1b665fdd44511da75f8dd7800072d812426ff2571eb"
    end
  end

  def install
    bin.install "bb"
  end
end
