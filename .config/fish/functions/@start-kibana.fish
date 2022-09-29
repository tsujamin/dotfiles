function @start-kibana
	brew services run elasticsearch-full
	brew services run kibana-full
	open "http://localhost:5601/"
end
