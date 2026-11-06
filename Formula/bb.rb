class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.330"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.330.tar.gz"
      sha256 "d583d597c2f9cfec7ccf24173f3dcd9c6887419c97353f633fadbe7c9abc4a3d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.330.tar.gz"
      sha256 "aee9eed4564b9e55851ea6a83b51c828a80ec3c4d30c93fc326cde22b86fe5e5"
    end
  end

  def install
    bin.install "bb"
  end
end
