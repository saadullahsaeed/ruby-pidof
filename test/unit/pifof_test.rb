require_relative '../test_helper'
require 'pidof'

class PidofTest < Test::Unit::TestCase

  def test_nil_for_no_match
    pid = Pidof.parse('foo', processlist_output)
    assert_equal pid, nil
  end


  def test_pid_found_in_ps_output
    pid = Pidof.parse('login', processlist_output)
    assert_equal pid, 789
  end


  private
    def processlist_output
      output = '';
      output << '  PID COMMAND\n'
      output << ' 123 /usr/lib/utmpd\n'
      output << ' 456 /usr/lib/saf/ttymon\n'
      output << ' 789 login\n'
      output << ' 1011 /sbin/init\n'
      output
    end
end