class Agentrail < Formula
  desc "Portable coding-agent handoff CLI"
  homepage "https://github.com/Latentik/agentrail"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.1.6/agentrail-v0.1.6-macos-arm64.tar.gz"
      sha256 "f667b8c0c80f622a107dfcdce610acc01c063f9d36704f527c7d77aa47c1f969"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"agentrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentrail --version")
  end
end
