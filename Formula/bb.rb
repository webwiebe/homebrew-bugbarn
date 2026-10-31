class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.306"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.306.tar.gz"
      sha256 "fafb99624995532245cf6abddeaf5dad9324a2458d6c081c2dd41a70b2e9fe8c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.306.tar.gz"
      sha256 "894cc7e1e448cd92796cb1eb54280dc23099e51e0fe41979060604c917c59645"
    end
  end

  def install
    bin.install "bb"
  end
end
