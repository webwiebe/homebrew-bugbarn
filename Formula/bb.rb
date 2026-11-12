class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.362"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.362.tar.gz"
      sha256 "879aa00a02b74a8b5d833ad5ba81d964ff82bacd3a57cdd550aa05b66699d8c4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.362.tar.gz"
      sha256 "57df1771f4068c85abd0e11269d0f6e9bf3e6534ba1677714d9c919e7cfd007d"
    end
  end

  def install
    bin.install "bb"
  end
end
