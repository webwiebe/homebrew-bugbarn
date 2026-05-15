class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.149"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.149.tar.gz"
      sha256 "9ec93bab17b985bd46e238c6e8ef151ffcc67604b64cd15afc0bc42aa0b76b02"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.149.tar.gz"
      sha256 "1e46d4aa151b73f68ad2060129bca3eb46e0a4fddff52129662d03b938ea23b5"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
