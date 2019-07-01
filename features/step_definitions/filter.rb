And(/^I see message attribute "([^"]*)" with value "([^"]*)"$/) do |name, an, av|
  response = $SQS.receive_message

  if $SNS.get_subscription_attributes({
      subscription_arn: @namedSubscriptionArns[name],
      attribute_name: an,
      attribute_value: av
                                       })
  end
end