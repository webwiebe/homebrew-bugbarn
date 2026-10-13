class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.245"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.245.tar.gz"
      sha256 "71efe77bc787b40d69f6eb7284dbacd691fdf721b5b3e110d1f20edcb7b88aa5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.245.tar.gz"
      sha256 "6973cfefcb34d1590ef1ecc82466bcc053e9bf3d194019b49922935b04a65f4d"
    end
  end

  def install
    bin.install "bb"
  end
end
