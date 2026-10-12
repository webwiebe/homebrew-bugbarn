class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.216"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.216.tar.gz"
      sha256 "00b6667cba8a09806e4fa52a93bbdb11e854f71af4d97392d58eae334cc3a250"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.216.tar.gz"
      sha256 "16877ea62e74404655849f861e05239692177fa946d16bcb5bc95535ace6278c"
    end
  end

  def install
    bin.install "bb"
  end
end
