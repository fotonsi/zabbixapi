module Zabbix

	class ZabbixApi
		def get_proxy_id(pattern)
			
			message = {
				'method' => 'proxy.get',
				'params' => {
					'filter' => {
						'name' => pattern
					}
				}
			}

			responce = send_request(message)

			if not ( responce.empty? ) then
				result = responce[0]['proxyid']
			else
				result = nil
			end

			return result
		end

		def proxy_exist?(pattern)
		
			proxy_id = get_proxy_id(pattern)

			if ( proxy_id ) then
				return true
			else
				return false
			end
		end

		def add_proxy(proxyname)
			
			message = {
				'method' => 'proxy.create',
				'params' => {
					'name' => proxyname 
				}
			}

			responce = send_request(message)

			if ( responce ) then
				result = responce['proxyid'] 
			else
				result = nil
			end

			return result
		end

#		def add_host_to_proxy(host_id, proxy_id)
#			
#			message = {
#				'method' => 'proxy.massAdd',
#				'params' => {
#					'proxys' => [ proxy_id ],
#					'hosts' => [ host_id ]
#				}
#			}
#
#			responce = send_request(message)
#
#			if not ( responce.empty? ) then
#				result = true
#			else
#				result = false
#			end
#			
#			return result
#		end
	end
end
