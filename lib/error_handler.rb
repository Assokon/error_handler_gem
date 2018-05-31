require "error_handler/version"

module ErrorHandler
  def self.call(message: '', caller: nil, locations: caller_locations)
    caller_method = locations.first.label
    raise Exception.new("#{caller}::#{caller_method}: #{message} \nfrom: #{locations.first.path}:#{locations.first.lineno}")
  end

  def self.check_class(obj: nil, clazz: nil, caller: nil, locations: caller_locations)
    message = "param is not type of #{clazz}: '#{obj.class}'"
    call(message: message, caller: caller, locations: locations) if obj.class != clazz
  end

  def self.check_param(param: nil, clazz: nil, caller: nil, locations: caller_locations)
    check_class(obj: param, clazz: clazz, caller: caller, locations: locations)
  end
end