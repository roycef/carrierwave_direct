# encoding: utf-8

module CarrierWaveDirect
  class FormBuilder < ActionView::Helpers::FormBuilder
    def file_field(method, options = {})
      options.merge!(:name => "file")
      hidden_field(:key,                             :name => "key") <<
      hidden_field(:aws_access_key_id,               :name => "AWSAccessKeyId") <<
      hidden_field(:acl,                             :name => "acl") <<
      hidden_field(:success_action_status,           :name => "success_action_status") <<
      hidden_field(:policy,                          :name => "policy") <<
      hidden_field(:signature,                       :name => "signature") <<
      super
    end
  end
end

