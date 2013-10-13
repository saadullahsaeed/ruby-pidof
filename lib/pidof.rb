class Pidof

  def self.find process_name
    processes = `ps -eo pid,comm`
    self.parse process_name, processes
  end


  def self.parse process_name, process_list
    line = process_list.match(/(\d+) #{process_name}/)
    if line.nil?
      return nil
    end
    line.to_s.split(' ').first.to_i
  end

end