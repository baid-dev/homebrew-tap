class Baid < Formula
  desc "CLI for managing AI agent skills"
  homepage "https://baid.dev"
  url "https://rubygems.org/downloads/baid-0.3.0.gem"
  sha256 "99dea56415c536f0a19f92b9d94d87ac53604a5f0506ae7c218bb7f4d9738555"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "install", "--no-document", cached_download
    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end

  test do
    assert_match "baid", shell_output("#{bin}/baid version")
  end
end