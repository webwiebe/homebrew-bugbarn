class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.359"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.359.tar.gz"
      sha256 "21b28c18748b94bd1a15ef79d56c93455e51f712b6c71a98dcc6387f032c9e94"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.359.tar.gz"
      sha256 "6f5d1be9abe4f84b2c6d876de41f4e6d15a1e8b931630bb168149565d082f2ee"
    end
  end

  def install
    bin.install "bb"
  end
end
