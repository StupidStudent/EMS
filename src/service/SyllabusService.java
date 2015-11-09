package service;

import java.util.List;

import entity.Syllabus;

public interface SyllabusService
{
	public List<Syllabus> getSyllabusesByClassId(int classId);
}
