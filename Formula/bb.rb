class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.54.tar.gz"
      sha256 "b623e1e53451e5d783b5af3f9f6f13f1adf8a6283444b8b8f39987790062e16e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.54.tar.gz"
      sha256 "865048f17deef713aa648d6638b3e5ef6a08f2ec37ee3425be159ac936d0a0a0"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
