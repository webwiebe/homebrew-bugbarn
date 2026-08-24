class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.163"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.163.tar.gz"
      sha256 "025683d36ed54747d4db10368889c95b262b3b03b74642ad57153a2240fd5876"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.163.tar.gz"
      sha256 "12fc691f68b8560695e606e4508d65e1f99946a726e4a11113cfb40a1ab5a4ce"
    end
  end

  def install
    bin.install "bb"
  end
end
