xml.instruct! :xml, :version=> '1.0', :encoding => 'UTF-8'
xml.whitehole do

	@stories.each do |story|

		xml.story :name => story.name do

			@storylinks.each do |storylink|
				if storylink.story == story.name then

					@patterns.each do |pattern|
						if storylink.pattern == pattern.name then

							xml.pattern :name => pattern.name, :event => pattern.event, :type => pattern.patterntype do

								@patternlinks.each do |patternlink|
									if patternlink.pattern == storylink.pattern then
										if patternlink.active_task != "" then

											@tasks.each do |task|

												if patternlink.active_task == task.name then

													xml.active_task :name => task.name do

														@tasklinks.each do |tasklink|
															if tasklink.task == task.name then

																@applications.each do |application|
																	if tasklink.application == application.name then
																		xml.app :name => application.name, :module => application.module do
																			xml.src :uri => tasklink.input_data
																			xml.dst :uri => tasklink.output_data
																		end
																	end
																end
															end
														end
													end
												end

												if patternlink.passive_task == task.name then

													xml.passive_task :name => task.name do

														@tasklinks.each do |tasklink|
															if tasklink.task == task.name then

																@applications.each do |application|
																	if tasklink.application == application.name then
																		xml.app :name => application.name, :module => application.module do
																			xml.src :uri => tasklink.input_data
																			xml.dst :uri => tasklink.output_data
																		end
																	end
																end

															end
														end

													end

												end

											end

										end
									end
								end

							end

						end
					end

				end
			end

		end

	end

end

