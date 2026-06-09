class Claudescope < Formula
  desc "Local, read-only viewer for AI coding-agent transcripts"
  homepage "https://github.com/vladar107/claudescope"
  url "https://registry.npmjs.org/@vladar107/claudescope/-/claudescope-0.4.1.tgz"
  sha256 "69d89f21049910995f26c895fe123083f0119fbd8c4993a9fe8459ea3469999f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claudescope version")
  end
end
