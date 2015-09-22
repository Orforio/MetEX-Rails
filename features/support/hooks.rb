After do |scenario|
  if scenario.failed?
    save_page('features/results/pagearchive' + Time.now.to_s + '.html')
  end
end