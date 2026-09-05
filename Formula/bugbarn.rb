class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.174"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.174.tar.gz"
      sha256 "fb68ff6ec7ddbe7d5cca99a19662e40006bac167a6a033ac0ea69fafc3d0a5a6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.174.tar.gz"
      sha256 "39bbadfd85eedbe333f152fec69ef35637faa44d4fe57dfdc3258247edd47ca7"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
