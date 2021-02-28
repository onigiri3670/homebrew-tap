# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Chromenv < Formula
  desc ""
  homepage ""
  url "https://github.com/onigiri3670/chromenv/archive/0.0.6.tar.gz"
  sha256 "d04264c90d47002000c3b5540cd0f9faaad4f47c5c4a71db05ef0c567cbd9e59"
  license ""


  def install
    inreplace "bin/chromenv" do |s|
      s.sub! "CHROMENV_HOME=$(pwd)", "CHROMENV_HOME=#{libexec}/.."
    end
    prefix.install ["bin", "libexec"]
    system "chromenv", "update"
  end

end
