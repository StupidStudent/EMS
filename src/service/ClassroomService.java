package service;

import java.util.List;

import org.springframework.stereotype.Service;

import entity.Classroom;


public interface ClassroomService
{
	public List<Classroom> getClassroom();
}
