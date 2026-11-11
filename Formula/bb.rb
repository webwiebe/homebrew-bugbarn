class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.344"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.344.tar.gz"
      sha256 "4c6ddd7e2807f99d26af6208cae0168e3ce940f8b9db37e938584d7403fd636b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.344.tar.gz"
      sha256 "223b933f71c0aa57947417b31cc8c1b4b090da395b0d7b2d4b6acba654129a03"
    end
  end

  def install
    bin.install "bb"
  end
end
