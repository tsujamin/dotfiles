function @start-kibana
	brew services run elasticsearch-full
	brew services run kibana-full
end
