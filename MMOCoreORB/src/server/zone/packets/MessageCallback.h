/*
 * MessageCallback.h
 *
 *  Created on: 21/07/2009
 *      Author: TheAnswer
 */

#ifndef MESSAGECALLBACK_H_
#define MESSAGECALLBACK_H_

#include "engine/core/Task.h"
#include "engine/log/Logger.h"
#include "server/zone/ZoneClientSession.h"
#include "server/zone/ZoneProcessServer.h"
//Infinity:  Custom includes
#include "server/zone/objects/creature/CreatureObject.h"

namespace server {
namespace zone {
namespace packets {

	class MessageCallback : public Task, public Logger {
	protected:
		Reference<ZoneClientSession*> client;

		ManagedReference<ZoneProcessServer*> server;

	public:
		MessageCallback(ZoneClientSession* client, ZoneProcessServer* server) {
			MessageCallback::client = client;
			MessageCallback::server = server;

			setLoggingName("MessageCallback");
		}

		virtual ~MessageCallback() {
		}

		virtual void parse(Message* message) = 0;

		bool parseMessage(Message* packet) {
			try {

				parse(packet);

			} catch (const Exception& e) {
					error("MessageCallback - exception while parsing message in ZonePacketHandler");
				Logger::console.error("MessageCallback - Large packet size, size = " + String::valueOf(packet->size()) + ", accountID = " + String::valueOf(client->getAccountID()) + ", IP = " + client->getIPAddress());
				error(e.getMessage());
				e.printStackTrace();

				return false;
			}

			return true;
		}

		inline ZoneClientSession* getClient() const {
			return client.get();
		}

		inline ZoneProcessServer* getServer() const {
			return server;
		}

	};

}
}
}

using namespace server::zone::packets;


#endif /* MESSAGECALLBACK_H_ */
