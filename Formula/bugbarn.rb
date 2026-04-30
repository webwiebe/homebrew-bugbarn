class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.13.tar.gz"
      sha256 "3e9dc27aee9587d2b16c13e152044a04da7c07be0e6073ff29540d9dfe1b5877"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.13.tar.gz"
      sha256 "4241421ee092c19574509c20dcb8832705d2e053faaf757e7a64c88d18143746"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
