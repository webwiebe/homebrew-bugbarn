class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.153"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.153.tar.gz"
      sha256 "8834f38fc14cf41887ff7a6c6ee35db5caa7db43f69f7f1a54adc91f3885d5fc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.153.tar.gz"
      sha256 "fb8f4124e98da0770d92d03d324c5c241b81e8ded44116198fb5861605bbd783"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
