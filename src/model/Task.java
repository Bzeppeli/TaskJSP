package model;

import java.sql.Date;


public class Task {

	private int id;
    private String name;
    private String description;
    private String statusTask;
    private Date dateCreated;
    private Date dateUpdated;
    private Date dateConclusion;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public Date getDateUpdated() {
		return dateUpdated;
	}

	public void setDateUpdated(Date dateUpdated) {
		this.dateUpdated = dateUpdated;
	}

	public String getStatusTask() {
		return statusTask;
	}

	public void setStatusTask(String statusTask) {
		this.statusTask = statusTask;
	}

	public Date getDateConclusion() {
		return dateConclusion;
	}

	public void setDateConclusion(Date dateConclusion) {
		this.dateConclusion = dateConclusion;
	}

	
	@Override
	public String toString() {
		return "Task [id=" + id + ", name=" + name + ", description=" + description + ", statusTask=" + statusTask
				+ ", dateCreated=" + dateCreated + ", dateUpdated=" + dateUpdated + ", dateConclusion=" + dateConclusion
				+ "]";
	}

}
