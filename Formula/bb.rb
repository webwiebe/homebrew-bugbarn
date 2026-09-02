class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.168"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.168.tar.gz"
      sha256 "ff3dbbfb5bb0fef65739336c0cddb5b2454b2a97a61f2bc27815cfeb9a107937"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.168.tar.gz"
      sha256 "167374f19d84f46c2e0679128f838a17031759d65a903f18a4109b200937991a"
    end
  end

  def install
    bin.install "bb"
  end
end
