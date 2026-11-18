class Compara < Formula
  desc "Compare two tables (CSV, NDJSON, Parquet) on a composite key: counts, per-column statistics and a self-contained HTML report."
  homepage "https://andrey-usa.github.io/compara/"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.7.0/compara-x86_64-apple-darwin.tar.gz"
      sha256 "e1729f360fe308aa2f72a27bf484bca3859a3a4e5f461cf9ffa0b6f73abfde9f"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.7.0/compara-aarch64-apple-darwin.tar.gz"
      sha256 "fbe083f8400a8244786cf002020a022c42f63b6d7dbe0c83766d0fe0bd11bc17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.7.0/compara-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3a2603b02d1a8dda4d1aba46a01d4e93a83d432c16c8aac2c0390d83964bba9"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.7.0/compara-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2f0570d867d5c2732928a6bcd4e6a0779f58f25324e955f1d94c7b520b33619"
    end
  end

  def install
    bin.install "compara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compara --version")
  end
end
