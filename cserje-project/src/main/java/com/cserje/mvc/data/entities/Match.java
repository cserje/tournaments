package com.cserje.mvc.data.entities;

import java.io.Serializable;
import java.util.Date;

public class Match implements Serializable {

	private static final long serialVersionUID = 1L;
	private static Long counter=0L;
	private Long id;
	private Team team1;
	private Team team2;
	private String start;
	
	
	public Match() {
		
	}
	
	public Match(Team team1, Team team2, String string) {
		this.id=counter;
		counter++;
		this.team1=team1;
		this.team2=team2;
		this.start=string;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Team getTeam1() {
		return team1;
	}
	public void setTeam1(Team team1) {
		this.team1 = team1;
	}
	public Team getTeam2() {
		return team2;
	}
	public void setTeam2(Team team2) {
		this.team2 = team2;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String time) {
		this.start = time;
		
	}
	@Override
	public String toString() {
		return team1.getName()+" vs. "+team2.getName()+" at: "+start.toString();
	}

}
