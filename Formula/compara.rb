class Compara < Formula
  desc "Compare two tables (CSV, NDJSON, Parquet) on a composite key: counts, per-column statistics and a self-contained HTML report."
  homepage "https://github.com/andrey-usa/compara"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.1/compara-x86_64-apple-darwin.tar.gz"
      sha256 "fa3d84f4c5de7db4273cf57b9389c641a484e2f5199f0742e32f0e9e35ed59ed"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.1/compara-aarch64-apple-darwin.tar.gz"
      sha256 "62bfbe0407e42051911a277bfa0238e53144a7be806e0b4d94a3cabb547a2072"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.1/compara-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7855de398d4880211ddcb486a9afd3ad0ae629046f0f61ff60f44800bea213b6"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.1/compara-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59573aa828a6f366d1fad48794e656cb5352a653640641226c3f3d3f9ee5357e"
    end
  end

  def install
    bin.install "compara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compara --version")
  end
end
