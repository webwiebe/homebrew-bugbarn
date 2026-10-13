class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.231"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.231.tar.gz"
      sha256 "ae2f34755209cc69addcf45a15de0a07ff27d8cd1bf596184bee4f093fe65c9f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.231.tar.gz"
      sha256 "f0128c0bb698717851c666f4255b230fe4d85897550ef80d214fd5e5c5515d99"
    end
  end

  def install
    bin.install "bb"
  end
end
