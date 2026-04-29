class Agentrail < Formula
  desc "Portable coding-agent handoff CLI"
  homepage "https://github.com/Latentik/agentrail"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.1.1/agentrail-v0.1.1-macos-arm64.tar.gz"
      sha256 "REPLACE_WITH_RELEASE_SHA256"
    end
  end

  def install
    bin.install "agentrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentrail --version")
  end
end
