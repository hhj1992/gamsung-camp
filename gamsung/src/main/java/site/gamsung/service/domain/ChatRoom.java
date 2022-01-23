package site.gamsung.service.domain;

import java.util.List;
import java.util.UUID;

public class ChatRoom {
	
	private UUID room;
	private List<String> members;

	public ChatRoom() {
	}

	
	
	public ChatRoom(UUID room, List<String> members) {
		this.room = room;
		this.members = members;
	}



	public UUID getRoom() {
		return room;
	}

	public List<String> getMembers() {
		return members;
	}



	@Override
	public String toString() {
		return "ChatRoom [room=" + room + ", members=" + members + "]";
	}
	
	
	
}
