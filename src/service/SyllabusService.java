package service;

import java.util.List;

import entity.Profession;
import entity.Syllabus;

public interface SyllabusService
{
	public List<Syllabus> getSyllabusesByClassId(int classId);
	
	public void saveOrUpdateSyllabus(Syllabus syllabus);	
	
	public Syllabus get(int syllabusId);
	
	public boolean deleteSyllabus(int syllabusId);

	public List<Syllabus> getTeachPlan(Profession profession);
}
