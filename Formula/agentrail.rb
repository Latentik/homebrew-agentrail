class Agentrail < Formula
  desc "Portable coding-agent handoff CLI"
  homepage "https://github.com/Latentik/agentrail"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.1.2/agentrail-v0.1.2-macos-arm64.tar.gz"
      sha256 "a897507a1cb9974a0c6f08a6245f323d09766a2a04c13505590de9ac237c5c03"
    end
  end

  def install
    bin.install "agentrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentrail --version")
  end
end
