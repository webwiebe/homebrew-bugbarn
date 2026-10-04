class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.197"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.197.tar.gz"
      sha256 "7357bbb0caf10faf2ef9f716ffa7aefd7bc6149f7258cf1743af20ac88a1e53d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.197.tar.gz"
      sha256 "90034c7c5def58d08bb0212a9168c4534c4eff03b0698ef07307bdc8d119a8c4"
    end
  end

  def install
    bin.install "bb"
  end
end
