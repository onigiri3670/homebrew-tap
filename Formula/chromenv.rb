# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Chromenv < Formula
  desc ""
  homepage ""
  url "https://github.com/onigiri3670/chromenv/archive/0.0.3.tar.gz"
  sha256 "fdc5473031fe03c4dadef4909fdfb1e0c09b6f9cb729a8f527ea7c986fcd0fb1"
  license ""

  # depends_on "cmake" => :build

  def install
    p libexec
    p HOMEBREW_PREFIX
    inreplace "bin/chromenv" do |s|
      p s
      # s.gsub! '"${BASH_SOURCE%/*}"/../libexec', libexec
      s.sub! "CHROMENV_HOME=$(pwd)", "CHROMENV_HOME=#{HOMEBREW_PREFIX}"
    end
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    prefix.install ["bin", "libexec"]
    # system "cmake", ".", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test chromenv`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
