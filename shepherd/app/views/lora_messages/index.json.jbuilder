json.array!(@lora_messages) do |lora_message|
  json.extract! lora_message, :id, :payload
  json.url lora_message_url(lora_message, format: :json)
end
